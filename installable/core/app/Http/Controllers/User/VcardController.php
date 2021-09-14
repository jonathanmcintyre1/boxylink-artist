<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use App\Models\User\UserVcard;
use Auth;
use Illuminate\Http\Request;
use Session;
use Validator;

class VcardController extends Controller
{
    public function vcard() {
        $data['vcards'] = UserVcard::where('user_id', Auth::user()->id)->orderBy('id', 'DESC')->get();
        return view('user.vcard.index', $data);
    }

    public function create() {
        return view('user.vcard.create');
    }

    public function edit($id) {
        $data['vcard'] = UserVcard::findOrFail($id);
        return view('user.vcard.edit', $data);
    }

    public function store(Request $request) {

        $profileImg = $request->file('profile_image');
        $coverImg = $request->file('cover_image');
        $allowedExts = array('jpg', 'png', 'jpeg');

        $rules = [
            'vcard_name' => 'required|max:255',
            'template' => 'required',
            'direction' => 'required',
            'name' => 'nullable|max:255',
            'occupation' => 'nullable|max:255',
            'profile_image' => [
                function ($attribute, $value, $fail) use ($profileImg, $allowedExts) {
                    if (!empty($profileImg)) {
                        $ext = $profileImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'cover_image' => [
                function ($attribute, $value, $fail) use ($coverImg, $allowedExts) {
                    if (!empty($coverImg)) {
                        $ext = $coverImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'icons.*' => 'required',
            'colors.*' => 'required',
            'labels.*' => 'required',
            'values.*' => 'required',
        ];

        $messages = [
            'icons.*.required' => 'The Icon field cannot be empty',
            'colors.*.required' => 'The Color field cannot be empty',
            'labels.*.required' => 'The Label field cannot be empty',
            'values.*.required' => 'The Value field cannot be empty'
        ];


        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        $vcard = new UserVcard();
        $vcard->user_id = Auth::user()->id;
        $vcard->vcard_name = $request->vcard_name;
        $vcard->direction = $request->direction;
        $vcard->template = $request->template;
        if ($request->hasFile('profile_image')) {
            $filename = uniqid() . '.' . $profileImg->getClientOriginalExtension();
            $dir = 'assets/front/img/user/vcard/';
            @mkdir($dir, 0775, true);
            $request->file('profile_image')->move($dir, $filename);
            $vcard->profile_image = $filename;
        }
        if ($request->hasFile('cover_image')) {
            $filename = uniqid() . '.' . $coverImg->getClientOriginalExtension();
            $dir = 'assets/front/img/user/vcard/';
            @mkdir($dir, 0775, true);
            $request->file('cover_image')->move($dir, $filename);
            $vcard->cover_image = $filename;
        }
        $vcard->name = $request->name;
        $vcard->occupation = $request->occupation;
        $vcard->introduction = $request->introduction;

        $infoArr = [];
        $labels = $request->labels ? $request->labels : [];
        $values = $request->values ? $request->values : [];
        $icons = $request->icons ? $request->icons : [];
        $colors = $request->colors ? $request->colors : [];

        foreach ($labels as $key => $label) {
            $info = [
                'icon' => $icons["$key"],
                'color' => $colors["$key"],
                'label' => $labels["$key"],
                'value' => $values["$key"]
            ];
            $infoArr[] = $info;
        }

        $vcard->information = json_encode($infoArr);

        $vcard->save();

        $request->session()->flash('success', 'Vcard added successfully');
        return 'success';
    }

    public function update(Request $request) {
        $profileImg = $request->file('profile_image');
        $coverImg = $request->file('cover_image');
        $allowedExts = array('jpg', 'png', 'jpeg');

        $rules = [
            'vcard_name' => 'required|max:255',
            'template' => 'required',
            'direction' => 'required',
            'name' => 'nullable|max:255',
            'occupation' => 'nullable|max:255',
            'profile_image' => [
                function ($attribute, $value, $fail) use ($profileImg, $allowedExts) {
                    if (!empty($profileImg)) {
                        $ext = $profileImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'cover_image' => [
                function ($attribute, $value, $fail) use ($coverImg, $allowedExts) {
                    if (!empty($coverImg)) {
                        $ext = $coverImg->getClientOriginalExtension();
                        if (!in_array($ext, $allowedExts)) {
                            return $fail("Only png, jpg, jpeg image is allowed");
                        }
                    }
                },
            ],
            'icons.*' => 'required',
            'colors.*' => 'required',
            'labels.*' => 'required',
            'values.*' => 'required',
        ];

        $messages = [
            'icons.*.required' => 'The Icon field cannot be empty',
            'colors.*.required' => 'The Color field cannot be empty',
            'labels.*.required' => 'The Label field cannot be empty',
            'values.*.required' => 'The Value field cannot be empty'
        ];


        $validator = Validator::make($request->all(), $rules, $messages);
        if ($validator->fails()) {
            $validator->getMessageBag()->add('error', 'true');
            return response()->json($validator->errors());
        }

        $vcard = UserVcard::find($request->vcard_id);
        $vcard->user_id = Auth::user()->id;
        $vcard->vcard_name = $request->vcard_name;
        $vcard->direction = $request->direction;
        $vcard->template = $request->template;
        if ($request->hasFile('profile_image')) {
            $filename = uniqid() . '.' . $profileImg->getClientOriginalExtension();
            $dir = 'assets/front/img/user/vcard/';
            @mkdir($dir, 0775, true);
            $request->file('profile_image')->move($dir, $filename);
            $vcard->profile_image = $filename;
        }
        if ($request->hasFile('cover_image')) {
            $filename = uniqid() . '.' . $coverImg->getClientOriginalExtension();
            $dir = 'assets/front/img/user/vcard/';
            @mkdir($dir, 0775, true);
            $request->file('cover_image')->move($dir, $filename);
            $vcard->cover_image = $filename;
        }
        $vcard->name = $request->name;
        $vcard->occupation = $request->occupation;
        $vcard->introduction = $request->introduction;

        $infoArr = [];
        $labels = $request->labels ? $request->labels : [];
        $values = $request->values ? $request->values : [];
        $icons = $request->icons ? $request->icons : [];
        $colors = $request->colors ? $request->colors : [];

        foreach ($labels as $key => $label) {
            $info = [
                'icon' => $icons["$key"],
                'color' => $colors["$key"],
                'label' => $labels["$key"],
                'value' => $values["$key"]
            ];
            $infoArr[] = $info;
        }

        $vcard->information = json_encode($infoArr);

        $vcard->save();

        $request->session()->flash('success', 'Vcard updated successfully');
        return 'success';
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function delete(Request $request)
    {
        $vcard = UserVcard::findOrFail($request->vcard_id);
        @unlink('assets/front/img/user/vcard/' . $vcard->profile_image);
        @unlink('assets/front/img/user/vcard/' . $vcard->cover_image);
        $vcard->delete();
        Session::flash('success', 'Vcard deleted successfully!');
        return back();
    }

    public function bulkDelete(Request $request)
    {
        $ids = $request->ids;
        foreach ($ids as $id) {
            $vcard = UserVcard::findOrFail($id);
            @unlink('assets/front/img/user/vcard/' . $vcard->profile_image);
            @unlink('assets/front/img/user/vcard/' . $vcard->cover_image);
            $vcard->delete();
        }
        Session::flash('success', 'Vcards deleted successfully!');
        return "success";
    }

    public function information($id) {
        $vcard = UserVcard::find($id);
        $information = json_decode($vcard->information, true);
        return response()->json($information);
    }
}
