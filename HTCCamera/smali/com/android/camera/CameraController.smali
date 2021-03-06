.class public Lcom/android/camera/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CameraController$SupportedList;,
        Lcom/android/camera/CameraController$Settings;,
        Lcom/android/camera/CameraController$SettingInfo;
    }
.end annotation


# static fields
.field private static final INIT_BRIGHTNESS:I = 0x0

.field private static final INIT_CONTRAST:I = 0x5

.field private static final INIT_SATURATION:I = 0x5

.field private static final INIT_SHARPNESS:I = 0xf

.field public static final KEY_GPU_EFFECT:Ljava/lang/String; = "GPU-effect"

.field public static final KEY_GPU_EFFECT_PARAM_0:Ljava/lang/String; = "GE-param0"

.field public static final KEY_GPU_EFFECT_PARAM_1:Ljava/lang/String; = "GE-param1"

.field public static final KEY_GPU_EFFECT_PARAM_2:Ljava/lang/String; = "GE-param2"

.field public static final KEY_GPU_EFFECT_PARAM_3:Ljava/lang/String; = "GE-param3"

.field private static final TAG:Ljava/lang/String; = "CameraController"


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraParameters:Landroid/hardware/Camera$Parameters;

.field private mInjectParam0:I

.field private mInjectParam1:I


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 1
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    .line 42
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 49
    iput-object p1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    .line 50
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 51
    return-void
.end method

.method public static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 723
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static supportFlashLight()Z
    .locals 1

    .prologue
    .line 708
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x1

    .line 711
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportScene()Z
    .locals 1

    .prologue
    .line 716
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 717
    const/4 v0, 0x1

    .line 719
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doSetCameraParameters()V
    .locals 3

    .prologue
    .line 54
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 56
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setParameters exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMaxNumFocusAreas()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    return v0
.end method

.method public getMaxNumMeteringAreas()I
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    return v0
.end method

.method public getPictureSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewSizeParameter()Landroid/hardware/Camera$Size;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;
    .locals 9
    .parameter "setting"

    .prologue
    const/16 v8, 0xf

    const/16 v7, 0x19

    const/high16 v6, 0x40a0

    const/4 v5, 0x5

    const/4 v4, 0x0

    .line 475
    new-instance v1, Lcom/android/camera/CameraController$SettingInfo;

    invoke-direct {v1}, Lcom/android/camera/CameraController$SettingInfo;-><init>()V

    .line 477
    .local v1, info:Lcom/android/camera/CameraController$SettingInfo;
    const-string v2, "exposure-compensation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 479
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 480
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 481
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 482
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 483
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :goto_0
    return-object v1

    .line 484
    :catch_0
    move-exception v0

    .line 485
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraController"

    const-string v3, "exposure-compensation: set value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 488
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "saturation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 490
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "saturation-min"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 491
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "saturation-max"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 498
    :goto_1
    invoke-virtual {v1, v6}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 500
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "saturation-def"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 507
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "saturation"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 508
    :catch_1
    move-exception v0

    .line 509
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v5}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 510
    const-string v2, "CameraController"

    const-string v3, "saturation: set current value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 492
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 493
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 494
    invoke-virtual {v1, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 495
    const-string v2, "CameraController"

    const-string v3, "saturation: set min, max value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 501
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 502
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v5}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 503
    const-string v2, "CameraController"

    const-string v3, "saturation: set default value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 513
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "contrast"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 515
    :try_start_4
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "contrast-min"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 516
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "contrast-max"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 523
    :goto_3
    invoke-virtual {v1, v6}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 525
    :try_start_5
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "contrast-def"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 532
    :goto_4
    :try_start_6
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "contrast"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 533
    :catch_4
    move-exception v0

    .line 534
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v5}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 535
    const-string v2, "CameraController"

    const-string v3, "contrast: set current value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 517
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 518
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 519
    invoke-virtual {v1, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 520
    const-string v2, "CameraController"

    const-string v3, "contrast: set min, max value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 526
    .end local v0           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v0

    .line 527
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v5}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 528
    const-string v2, "CameraController"

    const-string v3, "contrast: set default value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 538
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const-string v2, "sharpness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 540
    :try_start_7
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "sharpness-min"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 541
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "sharpness-max"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 548
    :goto_5
    invoke-virtual {v1, v6}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 550
    :try_start_8
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "sharpness-def"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 557
    :goto_6
    :try_start_9
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "sharpness"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    goto/16 :goto_0

    .line 558
    :catch_7
    move-exception v0

    .line 559
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v8}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    .line 560
    const-string v2, "CameraController"

    const-string v3, "sharpness: set current value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 542
    .end local v0           #e:Ljava/lang/Exception;
    :catch_8
    move-exception v0

    .line 543
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 544
    invoke-virtual {v1, v7}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    .line 545
    const-string v2, "CameraController"

    const-string v3, "sharpness: set min, max value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 551
    .end local v0           #e:Ljava/lang/Exception;
    :catch_9
    move-exception v0

    .line 552
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v8}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 553
    const-string v2, "CameraController"

    const-string v3, "sharpness: set default value failed !!"

    invoke-static {v2, v3, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 563
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    const-string v2, "taking-picture-zoom"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 565
    :try_start_a
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "taking-picture-zoom-min"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 566
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "taking-picture-zoom-max"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 572
    :goto_7
    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setStep(F)V

    .line 573
    invoke-virtual {v1, v4}, Lcom/android/camera/CameraController$SettingInfo;->setDefault(I)V

    .line 575
    :try_start_b
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v3, "taking-picture-zoom"

    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    goto/16 :goto_0

    .line 576
    :catch_a
    move-exception v0

    .line 577
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v4}, Lcom/android/camera/CameraController$SettingInfo;->setCurrent(I)V

    goto/16 :goto_0

    .line 567
    .end local v0           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 568
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v1, v4}, Lcom/android/camera/CameraController$SettingInfo;->setMin(I)V

    .line 569
    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraController$SettingInfo;->setMax(I)V

    goto :goto_7

    .line 580
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method public injectGEParam()Z
    .locals 3

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v1, :cond_0

    .line 330
    const-string v1, "CameraController"

    const-string v2, "injectGEParam"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_0
    const/4 v1, 0x1

    .line 339
    :goto_1
    return v1

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setParameters exception"

    invoke-static {v1, v2, v0}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 339
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public mapBarLevel2SettingValue(Ljava/lang/String;II)I
    .locals 16
    .parameter "key"
    .parameter "level"
    .parameter "level_num"

    .prologue
    .line 387
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v9

    .line 389
    .local v9, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v8

    .line 390
    .local v8, def:I
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v15

    .line 391
    .local v15, min:I
    invoke-virtual {v9}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v14

    .line 393
    .local v14, max:I
    const/4 v13, 0x0

    .line 394
    .local v13, level_min:I
    add-int/lit8 v12, p3, -0x1

    .line 395
    .local v12, level_max:I
    add-int v0, v13, v12

    div-int/lit8 v11, v0, 0x2

    .line 396
    .local v11, level_def:I
    move/from16 v10, p2

    .line 398
    .local v10, level_current:I
    if-le v10, v12, :cond_1

    .line 399
    move v10, v12

    .line 403
    :cond_0
    :goto_0
    int-to-float v0, v13

    int-to-float v1, v15

    int-to-float v2, v11

    int-to-float v3, v8

    int-to-float v4, v12

    int-to-float v5, v14

    int-to-float v6, v10

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->calcLagrange(FFFFFFF)F

    move-result v7

    .line 404
    .local v7, current:F
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 400
    .end local v7           #current:F
    :cond_1
    if-ge v10, v13, :cond_0

    .line 401
    move v10, v13

    goto :goto_0
.end method

.method public mapSettingValue2BarLevel(Ljava/lang/String;II)I
    .locals 16
    .parameter "key"
    .parameter "value"
    .parameter "level_num"

    .prologue
    .line 365
    invoke-virtual/range {p0 .. p1}, Lcom/android/camera/CameraController;->getSettingsInfo(Ljava/lang/String;)Lcom/android/camera/CameraController$SettingInfo;

    move-result-object v10

    .line 367
    .local v10, info:Lcom/android/camera/CameraController$SettingInfo;
    invoke-virtual {v10}, Lcom/android/camera/CameraController$SettingInfo;->getDefault()I

    move-result v9

    .line 368
    .local v9, def:I
    invoke-virtual {v10}, Lcom/android/camera/CameraController$SettingInfo;->getMin()I

    move-result v15

    .line 369
    .local v15, min:I
    invoke-virtual {v10}, Lcom/android/camera/CameraController$SettingInfo;->getMax()I

    move-result v14

    .line 370
    .local v14, max:I
    move/from16 v8, p2

    .line 372
    .local v8, current:I
    if-le v8, v14, :cond_1

    .line 373
    move v8, v14

    .line 377
    :cond_0
    :goto_0
    const/4 v13, 0x0

    .line 378
    .local v13, level_min:I
    add-int/lit8 v12, p3, -0x1

    .line 379
    .local v12, level_max:I
    add-int v0, v13, v12

    div-int/lit8 v11, v0, 0x2

    .line 381
    .local v11, level_def:I
    int-to-float v0, v15

    int-to-float v1, v13

    int-to-float v2, v9

    int-to-float v3, v11

    int-to-float v4, v14

    int-to-float v5, v12

    int-to-float v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/camera/Util;->calcLagrange(FFFFFFF)F

    move-result v7

    .line 382
    .local v7, bar_current:F
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 374
    .end local v7           #bar_current:F
    .end local v11           #level_def:I
    .end local v12           #level_max:I
    .end local v13           #level_min:I
    :cond_1
    if-ge v8, v15, :cond_0

    .line 375
    move v8, v15

    goto :goto_0
.end method

.method public removeCameraParameter(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 346
    :cond_0
    if-eqz p1, :cond_1

    .line 347
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->remove(Ljava/lang/String;)V

    .line 348
    :cond_1
    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 260
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    if-nez v0, :cond_1

    .line 261
    const-string v0, "CameraController"

    const-string v1, "not support Antibanding !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 264
    :cond_2
    const-string p1, "auto"

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 266
    return-void
.end method

.method public setCameraParameter(Ljava/lang/String;I)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 288
    :cond_0
    if-eqz p1, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 290
    :cond_1
    return-void
.end method

.method public setCameraParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 280
    :cond_0
    if-eqz p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_1
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 246
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    if-nez v0, :cond_1

    .line 247
    const-string v0, "CameraController"

    const-string v1, "not support Effects !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 250
    :cond_2
    const-string p1, "none"

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public setExposureCompensation(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 274
    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 182
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-nez v0, :cond_1

    .line 183
    const-string v0, "CameraController"

    const-string v1, "not support FlashMode !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 186
    :cond_2
    const-string p1, "auto"

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 225
    .local p1, focusArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 229
    return-void
.end method

.method public setGEParam(Ljava/lang/String;IIIIZ)Z
    .locals 5
    .parameter "param"
    .parameter "n0"
    .parameter "n1"
    .parameter "n2"
    .parameter "n3"
    .parameter "bEnable"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 300
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 304
    :cond_0
    const-string v2, "GE-param0"

    if-eq p1, v2, :cond_1

    const-string v2, "GE-param1"

    if-eq p1, v2, :cond_1

    .line 324
    :goto_0
    return v0

    .line 307
    :cond_1
    const-string v2, "GE-param0"

    if-ne p1, v2, :cond_4

    .line 309
    if-ne p6, v1, :cond_3

    iput v1, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    .line 321
    :cond_2
    :goto_1
    const-string v0, "CameraController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGEParam ( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "GE-param3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 324
    goto/16 :goto_0

    .line 310
    :cond_3
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam0:I

    goto/16 :goto_1

    .line 312
    :cond_4
    const-string v2, "GE-param1"

    if-ne p1, v2, :cond_2

    .line 314
    if-ne p6, v1, :cond_5

    iput v1, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1

    .line 315
    :cond_5
    iput v0, p0, Lcom/android/camera/CameraController;->mInjectParam1:I

    goto/16 :goto_1
.end method

.method public setGpuEffectType(Ljava/lang/String;)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "GPU-effect"

    invoke-virtual {v0, v1, p1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method public setJpegQuality(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    .line 106
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 11
    .parameter "loc"

    .prologue
    const-wide/16 v9, 0x0

    .line 118
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v7, :cond_0

    .line 119
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    iput-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 123
    :cond_0
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    .line 130
    if-eqz p1, :cond_6

    .line 131
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 132
    .local v1, lat:D
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    .line 133
    .local v3, lon:D
    cmpl-double v7, v1, v9

    if-nez v7, :cond_1

    cmpl-double v7, v3, v9

    if-eqz v7, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 135
    .local v0, hasLatLon:Z
    :goto_0
    if-eqz v0, :cond_5

    .line 136
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v1, v2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    .line 137
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v3, v4}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    .line 138
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 140
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    .line 147
    :goto_1
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 150
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long v5, v7, v9

    .line 151
    .local v5, utcTimeSeconds:J
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v5, v6}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    .line 153
    .end local v5           #utcTimeSeconds:J
    :cond_2
    const-string v7, "CameraController"

    const-string v8, "add gps location on photo"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    :goto_2
    return-void

    .line 133
    .restart local v1       #lat:D
    .restart local v3       #lon:D
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 145
    .restart local v0       #hasLatLon:Z
    :cond_4
    iget-object v7, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7, v9, v10}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    goto :goto_1

    .line 155
    :cond_5
    const-string v7, "CameraController"

    const-string v8, "not add gps location on photo - hasLatLon = false"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 158
    .end local v0           #hasLatLon:Z
    .end local v1           #lat:D
    .end local v3           #lon:D
    :cond_6
    const-string v7, "CameraController"

    const-string v8, "not add gps location on photo - loc = null"

    invoke-static {v7, v8}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 218
    .local p1, meteringArea:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 222
    return-void
.end method

.method public setPictureSizeParameter(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 91
    return-void
.end method

.method public setPreviewFpsRange(II)V
    .locals 3
    .parameter "min"
    .parameter "max"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 80
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "CameraController"

    const-string v2, "setPreviewFpsRange exception"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPreviewFrameRateParameter(I)V
    .locals 1
    .parameter "fps"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 98
    return-void
.end method

.method public setPreviewSizeParameter(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 73
    return-void
.end method

.method public setRecordingHint(Z)V
    .locals 3
    .parameter "hint"

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 237
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingHint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 114
    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 196
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-nez v0, :cond_1

    .line 197
    const-string v0, "CameraController"

    const-string v1, "not support SceneMode !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 200
    :cond_2
    const-string p1, "auto"

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public setSupportedList()V
    .locals 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 685
    const-string v0, "CameraController"

    const-string v1, "setSupportedList() - mCameraParameters = null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    .line 687
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FlashMode:Ljava/util/List;

    if-nez v0, :cond_1

    .line 688
    const-string v0, "CameraController"

    const-string v1, "SupportedList.FlashMode == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    .line 690
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->FocusModes:Ljava/util/List;

    if-nez v0, :cond_2

    .line 691
    const-string v0, "CameraController"

    const-string v1, "SupportedList.FocusModes == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    .line 693
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    if-nez v0, :cond_3

    .line 694
    const-string v0, "CameraController"

    const-string v1, "SupportedList.WhiteBalance == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    .line 696
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Effects:Ljava/util/List;

    if-nez v0, :cond_4

    .line 697
    const-string v0, "CameraController"

    const-string v1, "SupportedList.Effects == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    :cond_4
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    .line 699
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->Antibanding:Ljava/util/List;

    if-nez v0, :cond_5

    .line 700
    const-string v0, "CameraController"

    const-string v1, "SupportedList.Antibanding == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :cond_5
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    .line 703
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->SceneMode:Ljava/util/List;

    if-nez v0, :cond_6

    .line 704
    const-string v0, "CameraController"

    const-string v1, "SupportedList.SceneMode == null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_6
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 168
    :cond_0
    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    if-nez v0, :cond_1

    .line 169
    const-string v0, "CameraController"

    const-string v1, "not support WhiteBalance !!"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->E(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/camera/CameraController$SupportedList;->WhiteBalance:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/android/camera/CameraController;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    :cond_2
    const-string p1, "auto"

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public showParameters()V
    .locals 3

    .prologue
    .line 359
    const-string v0, "CameraController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method

.method public updateCameraParameters()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/CameraController;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/CameraController;->mCameraParameters:Landroid/hardware/Camera$Parameters;

    .line 66
    return-void
.end method
