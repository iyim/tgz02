.class public Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field public static final PROP_CAMERA_AVAILABLE:Ljava/lang/String; = "persist.camera.camavailable"

.field public static final VALUE_ENABLE:Ljava/lang/String; = "1"

.field public static final VALUE_UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static convertBmp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .line 50
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 51
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 52
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 53
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    .line 54
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getBestSize(Ljava/util/List;)Landroid/hardware/Camera$Size;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 29
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const v3, 0x3fe1e1e2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    if-nez v0, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    if-le v2, v3, :cond_0

    :goto_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getSettingProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 66
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    .line 67
    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const-string p0, "unknown"

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "contacts_avatar"

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.camera.camavailable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-object p1, p0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto :goto_0

    :catch_1
    move-exception p0

    .line 71
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    :goto_1
    return-object p1
.end method

.method public static isOpenCameraPrivacy()Z
    .locals 4

    const-string v0, "1"

    const-string v1, "persist.camera.camavailable"

    .line 81
    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->getSettingProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpenCameraPrivacy:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "contacts_avatar"

    invoke-static {v3, v2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 93
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "set"

    const/4 v3, 0x2

    .line 94
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 95
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    aput-object p1, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return-object v0
.end method

.method public static showCameraConfirmDialog(Landroid/support/v4/app/FragmentActivity;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)V
    .locals 3

    .line 105
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 106
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_camera_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_camera_message:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->setMessage(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    move-result-object p0

    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_turn_on:I

    .line 108
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->setPositiveButton(ILcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    move-result-object p0

    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_cancel:I

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->setNegativeButton(ILcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$IDialogClickListener;)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->setCancelable(Z)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->setCancelableOutside(Z)Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;

    move-result-object p0

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog$Builder;->show()Lcom/alibaba/ailabs/genie/contacts/common/view/CameraConfirmDialog;

    return-void
.end method
