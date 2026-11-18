.class public Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;
.super Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;
.source "TakePhotoActivity.java"


# static fields
.field private static final PERMISSIONS:[Ljava/lang/String;

.field private static final REQUEST_CAMERA_PERMISSION:I = 0x0

.field private static final TAG:Ljava/lang/String; = "contacts_avatar"


# instance fields
.field private mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

.field private mCameraLightOpened:Z

.field private mPicCallback:Landroid/hardware/Camera$PictureCallback;

.field private mResCallback:Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;

.field private mResListener:Lcom/alibaba/ailabs/genie/resmanager/IResListener;

.field private mResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

.field private mTakePhotoViewModel:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "android.permission.CAMERA"

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 46
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->PERMISSIONS:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mCameraLightOpened:Z

    .line 94
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity$1;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mPicCallback:Landroid/hardware/Camera$PictureCallback;

    .line 154
    new-instance v0, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$yQAZONC1eH3WMDKpki9Dt9m-DnM;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$yQAZONC1eH3WMDKpki9Dt9m-DnM;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResCallback:Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    return-object p0
.end method

.method private closeActivity()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_camera_permission_denied:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 151
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->finish()V

    return-void
.end method

.method private initView()V
    .locals 2

    .line 80
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/utils/AdapterUtils;->setCustomDensity(Landroid/content/Context;)V

    .line 81
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$layout;->activity_take_photo:I

    invoke-static {p0, v0}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    .line 82
    invoke-static {p0}, Landroid/arch/lifecycle/ViewModelProviders;->of(Landroid/support/v4/app/FragmentActivity;)Landroid/arch/lifecycle/ViewModelProvider;

    move-result-object v0

    const-class v1, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoViewModel;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroid/arch/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoViewModel;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mTakePhotoViewModel:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoViewModel;

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mTakePhotoViewModel:Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoViewModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->setViewModel(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoViewModel;)V

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->btnTakePhoto:Landroid/widget/Button;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$MWOrVFyFr7gZyr5RgSn00cXy6bA;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$MWOrVFyFr7gZyr5RgSn00cXy6bA;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->layoutExit:Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;

    new-instance v1, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$orsoFP4VgQMXXfImg0mbCJJFflM;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$orsoFP4VgQMXXfImg0mbCJJFflM;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/common/view/ContactsExitView;->setBackListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private needRequestPermissions()Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 118
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.permission.CAMERA"

    .line 119
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getUtPageName()Ljava/lang/String;
    .locals 1

    const-string v0, "call_TakePhoto"

    return-object v0
.end method

.method public getUtPageSpm()Ljava/lang/String;
    .locals 1

    const-string v0, "a1z3lt.12013418"

    return-object v0
.end method

.method public isOpenUt()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$initView$76$TakePhotoActivity(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mPicCallback:Landroid/hardware/Camera$PictureCallback;

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->takePhoto(Landroid/hardware/Camera$PictureCallback;)V

    .line 86
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->btnTakePhoto:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 87
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->btnTakePhoto:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_taking_photo:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic lambda$initView$77$TakePhotoActivity(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$new$80$TakePhotoActivity(IILjava/lang/String;)V
    .locals 1

    .line 155
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mResCallback.event = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "contacts_avatar"

    invoke-static {v0, p3}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance p3, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$GrjF1FiT-Z83CAKJMnX_Q_9x804;

    invoke-direct {p3, p0, p1, p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/-$$Lambda$TakePhotoActivity$GrjF1FiT-Z83CAKJMnX_Q_9x804;-><init>(Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;II)V

    invoke-static {p3}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$null$79$TakePhotoActivity(II)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 158
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->setVisibility(I)V

    .line 159
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->startPreview()V

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mCameraLightOpened:Z

    .line 161
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/CameraUtil;->openCameraLight(Landroid/content/Context;)V

    goto :goto_0

    .line 163
    :cond_0
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_camera_open_error:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/utils/ToastUtils;->show(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 73
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Black:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->setTheme(I)V

    .line 74
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setFormat(I)V

    .line 76
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->initView()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 171
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onPause()V

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->releaseCamera()V

    .line 174
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->releaseResource(I)Z

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResListener:Lcom/alibaba/ailabs/genie/resmanager/IResListener;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->unregisterListener(Lcom/alibaba/ailabs/genie/resmanager/IResListener;)Z

    .line 178
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mCameraLightOpened:Z

    if-eqz v0, :cond_1

    .line 179
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/contacts/common/utils/CameraUtil;->closeCameraLight(Landroid/content/Context;)V

    .line 181
    :cond_1
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mCameraLightOpened:Z

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_2

    .line 130
    :cond_0
    array-length p1, p3

    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    aget v1, p3, v0

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    .line 137
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->closeActivity()V

    goto :goto_2

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->setVisibility(I)V

    .line 140
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->startPreview()V

    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 53
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/contacts/common/base/BaseActivity;->onResume()V

    .line 54
    invoke-static {}, Lcom/alibaba/ailabs/genie/contacts/avatar/camera/CameraUtils;->isOpenCameraPrivacy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->needRequestPermissions()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->PERMISSIONS:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->surfaceView:Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/contacts/avatar/view/CameraPreview;->openCamera()V

    .line 59
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    .line 60
    new-instance v0, Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResCallback:Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;

    invoke-direct {v0, v2}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener;-><init>(Lcom/alibaba/ailabs/genie/resmanagerlib/ResListener$IResCallback;)V

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/resmanager/IResListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alibaba/ailabs/genie/resmanager/IResListener;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResListener:Lcom/alibaba/ailabs/genie/resmanager/IResListener;

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResListener:Lcom/alibaba/ailabs/genie/resmanager/IResListener;

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->registerListener(Lcom/alibaba/ailabs/genie/resmanager/IResListener;)Z

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mResManager:Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/ailabs/genie/resmanagerlib/ResManager;->requestResource(II)Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->btnTakePhoto:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/contacts/databinding/ActivityTakePhotoBinding;->btnTakePhoto:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/contacts/R$string;->contacts_take_photo:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/contacts/avatar/TakePhotoActivity;->closeActivity()V

    :goto_0
    return-void
.end method
