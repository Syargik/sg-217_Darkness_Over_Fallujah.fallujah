	CreateCam1 = {
        if !(isNil "cam") then {
            cam cameraEffect ["terminate", "back"];
            camDestroy cam;
        };
        cam = "camera" camCreate [0, 0, 0];
        cam cameraEffect ["internal", "Back", "uavrtt"];
        cam attachTo [media1, [0, 0, 0.3]]; // media1 - назавние переменной объекта, к которому будет прикреплена камера
        if ((player distance display) < 10) then {
            hint "Камера 1";
        };
        cam camSetFov 0.5; // FOV камеры
        cam camSetTarget [5611.729, 1700.190, 5.343]; // Позиция x,y,z куда будет смотреть камера
        cam camCommit 0;
        "uavrtt" setPiPEffect [1]; // 0 - обычный режим, 1 - ПНВ, 2 - теплак
        showUAVFeed true;
        display setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
    };

    CreateCam2 = {
        if !(isNil "cam") then {
            cam cameraEffect ["terminate", "back"];
            camDestroy cam;
        };
        cam = "camera" camCreate [0, 0, 0];
        cam cameraEffect ["internal", "Back", "uavrtt"];
        cam attachTo [media2, [0, 0, 0]];
        if ((player distance display) < 10) then {
            hint "Камера 2";
        };
        cam camSetFov 0.5;
        cam camSetTarget [5926.74, 1415.95, 4.856];
        cam camCommit 0;
        "uavrtt" setPiPEffect [1];
        showUAVFeed true;
        display setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
    };

    CreateCam3 = {
        if !(isNil "cam") then {
            cam cameraEffect ["terminate", "back"];
            camDestroy cam;
        };
        cam = "camera" camCreate [0, 0, 0];
        cam cameraEffect ["internal", "Back", "uavrtt"];
        cam attachTo [media3, [0, 0, 0.3]];
        if ((player distance display) < 10) then {
            hint "Камера 3";
        };
        cam camSetFov 0.5;
        cam camSetTarget [5307.204, 2131.942, 5.343];
        cam camCommit 0;
        "uavrtt" setPiPEffect [1];
        showUAVFeed true;
        display setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
    };

	CreateCam4 = {
        if !(isNil "cam") then {
            cam cameraEffect ["terminate", "back"];
            camDestroy cam;
        };
        cam = "camera" camCreate [0, 0, 0];
        cam cameraEffect ["internal", "Back", "uavrtt"];
        cam attachTo [media4, [0, 0, 0.3]];
        if ((player distance display) < 10) then {
            hint "Камера 4";
        };
        cam camSetFov 0.5;
        cam camSetTarget [3566.198, 1990.62, 4.812];
        cam camCommit 0;
        "uavrtt" setPiPEffect [1];
        showUAVFeed true;
        display setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1)"];
    };

    display addAction
    [
        "Включить экран",
        {
            params ["_caller", "_actionId", "_arguments"];
            [[], CreateCam1] remoteExec ["call", [0, -2] select isDedicated];
            display setVariable ["ON", true, true];
			display setVariable ["CAM2AVAILABLE", true, true];
        },
        nil,
        1.5,
        true,
        true,
        "",
        "!(display getVariable ['ON', false])", // _target, _this, _originalTarget
        50,
        false,
        "",
        ""
    ];

    display addAction
    [
        "Переключить камеру",
        {
            params ["_caller", "_actionId", "_arguments"];
            [[], CreateCam2] remoteExec ["call", [0, -2] select isDedicated];
			display setVariable ["CAM2AVAILABLE", nil, true];
			display setVariable ["CAM3AVAILABLE", true, true];
        },
        nil,
        1.5,
        true,
        true,
        "",
        "(display getVariable ['CAM2AVAILABLE', false])", // _target, _this, _originalTarget
        50,
        false,
        "",
        ""
    ];

    display addAction
    [
        "Переключить камеру",
        {
            params ["_caller", "_actionId", "_arguments"];
            [[], CreateCam3] remoteExec ["call", [0, -2] select isDedicated];
			display setVariable ["CAM3AVAILABLE", nil, true];
			display setVariable ["CAM4AVAILABLE", true, true];
        },
        nil,
        1.5,
        true,
        true,
        "",
        "(display getVariable ['CAM3AVAILABLE', false])", // _target, _this, _originalTarget
        50,
        false,
        "",
        ""
    ];

	display addAction
    [
        "Переключить камеру",
        {
            params ["_caller", "_actionId", "_arguments"];
            [[], CreateCam4] remoteExec ["call", [0, -2] select isDedicated];
			display setVariable ["CAM4AVAILABLE", nil, true];
			display setVariable ["CAM1AVAILABLE", true, true];
        },
        nil,
        1.5,
        true,
        true,
        "",
        "(display getVariable ['CAM4AVAILABLE', false])", // _target, _this, _originalTarget
        50,
        false,
        "",
        ""
    ];

	display addAction
    [
        "Переключить камеру",
        {
            params ["_caller", "_actionId", "_arguments"];
            [[], CreateCam1] remoteExec ["call", [0, -2] select isDedicated];
			display setVariable ["CAM1AVAILABLE", nil, true];
			display setVariable ["CAM2AVAILABLE", true, true];
        },
        nil,
        1.5,
        true,
        true,
        "",
        "(display getVariable ['CAM1AVAILABLE', false])", // _target, _this, _originalTarget
        50,
        false,
        "",
        ""
    ];