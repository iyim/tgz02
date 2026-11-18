.class public Landroid/taobao/windvane/jsbridge/api/WVCamera;
.super Landroid/taobao/windvane/jsbridge/WVApiPlugin;
.source "WVCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;
    }
.end annotation


# static fields
.field public static final LOCAL_IMAGE:Ljava/lang/String; = "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

.field private static final TAG:Ljava/lang/String; = "WVCamera"

.field public static maxLength:I = 0x400

.field private static multiActivityClass:Ljava/lang/String;

.field private static uploadServiceClass:Ljava/lang/String;


# instance fields
.field private lastAccess:J

.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

.field private mLocalPath:Ljava/lang/String;

.field private mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

.field private mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

.field private mPopupMenuTags:[Ljava/lang/String;

.field protected popupClickListener:Landroid/view/View$OnClickListener;

.field private uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

.field private useCN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/WVApiPlugin;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 64
    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->lastAccess:J

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->useCN:Z

    const-string/jumbo v0, "\u62cd\u7167"

    const-string/jumbo v1, "\u4ece\u76f8\u518c\u9009\u62e9"

    .line 167
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    .line 277
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$5;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->popupClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Landroid/taobao/windvane/jsbridge/api/WVCamera;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->isAlive:Z

    return p1
.end method

.method static synthetic access$100(Landroid/taobao/windvane/jsbridge/api/WVCamera;)Landroid/taobao/windvane/view/PopupWindowController;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    return-object p0
.end method

.method static synthetic access$200(Landroid/taobao/windvane/jsbridge/api/WVCamera;)[Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->openCamara()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$400(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->chosePhoto()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$500(Landroid/taobao/windvane/jsbridge/api/WVCamera;)Landroid/taobao/windvane/jsbridge/WVCallBackContext;
    .locals 0

    .line 57
    iget-object p0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    return-object p0
.end method

.method static synthetic access$600(Landroid/taobao/windvane/jsbridge/api/WVCamera;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->takePhotoSuccess(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private chosePhoto()V
    .locals 4

    const-string v0, "WVCamera"

    const-string/jumbo v1, "start to pick photo from system album."

    .line 239
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "msg"

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.taobao.taobao"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "mutipleSelection only support in taobao!"

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 249
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 250
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "taobao://go/ImgFileListActivity"

    .line 251
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget v2, v2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->maxSelect:I

    const-string v3, "maxSelect"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v2, 0xfa3

    goto :goto_0

    .line 255
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "android.intent.action.PICK"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v2, 0xfa2

    .line 258
    :goto_0
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 260
    :try_start_0
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v2, "WVCameraFilter"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "from-webview-id"

    .line 264
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    sget-object v2, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 269
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "ERROR_STARTACTIVITY"

    .line 270
    invoke-virtual {v0, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 7

    const-string v0, "localUrl"

    .line 663
    iget-boolean v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->isAlive:Z

    if-nez v1, :cond_0

    return-void

    .line 665
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 666
    iget-wide v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->lastAccess:J

    sub-long v3, v1, v3

    .line 667
    iput-wide v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->lastAccess:J

    const-wide/16 v1, 0x3e8

    const-string v5, "WVCamera"

    cmp-long v6, v3, v1

    if-gez v6, :cond_1

    .line 669
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "takePhoto, call this method too frequent,  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 672
    :cond_1
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 673
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p1, p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    .line 675
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 676
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string/jumbo v2, "type"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->type:I

    .line 677
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "mode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    .line 678
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string/jumbo v2, "v"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->v:Ljava/lang/String;

    .line 679
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "bizCode"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    .line 680
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "extraData"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraData:Ljava/lang/String;

    .line 681
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "extraInfo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraInfo:Lorg/json/JSONObject;

    .line 682
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "identifier"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    .line 683
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "maxSelect"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->maxSelect:I

    .line 684
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "mutipleSelection"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    .line 685
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "needZoom"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needZoom:Z

    .line 686
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iput-boolean v3, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    .line 687
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "needLogin"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needLogin:Z

    .line 688
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    const-string v2, "needBase64"

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    const-string v1, "maxLength"

    const/16 v2, 0x400

    .line 689
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->maxLength:I

    const-string v1, "lang"

    .line 690
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->useCN:Z

    .line 691
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 692
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    .line 694
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "takePhoto fail, params: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v0, "HY_PARAM_ERR"

    .line 696
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PHOTO_INIT_ERROR ,params:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "msg"

    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void
.end method

.method private isHasCamaraPermission()Z
    .locals 1

    .line 230
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private openCamara()V
    .locals 6

    .line 175
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->isHasCamaraPermission()Z

    move-result v0

    const-string v1, "msg"

    if-nez v0, :cond_1

    .line 177
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "NO_PERMISSION"

    .line 179
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "WVCamera"

    const-string/jumbo v2, "start to open system camera."

    .line 185
    invoke-static {v0, v2}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 188
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAMERA_OPEN_ERROR"

    if-nez v2, :cond_3

    .line 190
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v0, :cond_2

    .line 191
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "NO_CACHEDIR"

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_2
    return-void

    .line 199
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 201
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 202
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v2, v2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    .line 203
    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v4}, Landroid/taobao/windvane/file/WVFileUtils;->getFileUri(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_5

    .line 205
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v2, "image uri is null,check provider auth"

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :cond_5
    const-string v1, "output"

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "from"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 214
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0xfa1

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "WVCameraFilter"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const-string v2, "from-webview-id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 220
    sget-object v1, Landroid/taobao/windvane/config/GlobalConfig;->context:Landroid/app/Application;

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method public static registerMultiActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 652
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->multiActivityClass:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static registerMultiActivityName(Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 658
    sput-object p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->multiActivityClass:Ljava/lang/String;

    :cond_0
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static registerUploadService(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/taobao/windvane/jsbridge/api/WVUploadService;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 646
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadServiceClass:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private takePhotoSuccess(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 7

    .line 535
    iget v0, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 536
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iput-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    .line 539
    invoke-virtual {p0, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->upload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    goto/16 :goto_2

    .line 541
    :cond_0
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string p2, "PIC_PATH_ERROR"

    .line 542
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    const-string v0, "msg"

    .line 543
    invoke-virtual {p1, v0, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto/16 :goto_2

    .line 547
    :cond_1
    new-instance v0, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 548
    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->setSuccess()V

    .line 549
    iget-object v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mutipleSelection:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "base64Data"

    const/16 v3, 0x400

    const-string v4, "WVCamera"

    const-string v5, "localPath"

    const-string/jumbo v6, "url"

    if-eqz v1, :cond_5

    .line 551
    iget-boolean v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    if-nez v1, :cond_2

    return-void

    .line 554
    :cond_2
    iget-object v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    if-nez v1, :cond_3

    .line 555
    iget-object v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0, v5, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-boolean p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    if-eqz p2, :cond_4

    .line 558
    invoke-static {p1, v3}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 560
    invoke-static {p1}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :cond_3
    iget-object p1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    const-string p2, "images"

    invoke-virtual {v0, p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 566
    :cond_4
    :goto_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_1

    .line 568
    :cond_5
    iget-object v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0, v5, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-boolean v1, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needBase64:Z

    if-eqz v1, :cond_6

    .line 571
    invoke-static {p1, v3}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 573
    invoke-static {v1}, Landroid/taobao/windvane/jsbridge/utils/WVUtils;->bitmapToBase64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " localPath:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, v0}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 580
    :goto_1
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pic not upload and call success, retString: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/taobao/windvane/jsbridge/WVResult;->toJsonString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v0, "WVCamera"

    const-string/jumbo v1, "write photo io error."

    const/4 v2, 0x0

    .line 407
    :try_start_0
    iget-object v3, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-boolean v3, v3, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->needZoom:Z

    if-eqz v3, :cond_2

    .line 408
    invoke-static {p1}, Landroid/taobao/windvane/util/ImageTool;->readRotationDegree(Ljava/lang/String;)I

    move-result v3

    .line 409
    sget v4, Landroid/taobao/windvane/jsbridge/api/WVCamera;->maxLength:I

    invoke-static {p1, v4}, Landroid/taobao/windvane/util/ImageTool;->readZoomImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void

    .line 412
    :cond_1
    :try_start_1
    sget v4, Landroid/taobao/windvane/jsbridge/api/WVCamera;->maxLength:I

    invoke-static {p1, v4}, Landroid/taobao/windvane/util/ImageTool;->zoomBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 413
    invoke-static {p1, v3}, Landroid/taobao/windvane/util/ImageTool;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, p1

    goto :goto_0

    :catchall_0
    move-exception p2

    move-object v2, p1

    goto/16 :goto_3

    :catch_0
    move-object v2, p1

    goto/16 :goto_1

    .line 415
    :cond_2
    :try_start_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 416
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 418
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 420
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const-string v6, "msg"

    if-nez v5, :cond_4

    .line 422
    :try_start_3
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    .line 423
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read file : "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "READ_FILE_ERROR"

    .line 424
    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 428
    :cond_4
    invoke-static {v4, v3}, Landroid/taobao/windvane/file/FileManager;->copy(Ljava/io/File;Ljava/io/File;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 429
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string p2, "Failed to copy file!"

    .line 430
    invoke-virtual {p1, v6, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "COPY_FILE_ERROR"

    .line 431
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 432
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-void

    :cond_5
    move-object v5, v2

    .line 437
    :goto_0
    :try_start_4
    new-instance v6, Landroid/taobao/windvane/cache/WVFileInfo;

    invoke-direct {v6}, Landroid/taobao/windvane/cache/WVFileInfo;-><init>()V

    .line 438
    iget-object p1, p3, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v6, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    const-string p1, "image/jpeg"

    .line 439
    iput-object p1, v6, Landroid/taobao/windvane/cache/WVFileInfo;->mimeType:Ljava/lang/String;

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide v7, 0x9a7ec800L

    add-long/2addr v3, v7

    .line 441
    iput-wide v3, v6, Landroid/taobao/windvane/cache/WVFileInfo;->expireTime:J

    .line 443
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 444
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "write pic to file, name: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Landroid/taobao/windvane/cache/WVFileInfo;->fileName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 449
    :cond_6
    :try_start_5
    new-instance p1, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;

    move-object v3, p1

    move-object v4, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v3 .. v8}, Landroid/taobao/windvane/jsbridge/api/WVCamera$6;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/graphics/Bitmap;Landroid/taobao/windvane/cache/WVFileInfo;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_1
    move-exception p2

    move-object v2, v5

    goto :goto_3

    :catch_1
    move-object v2, v5

    goto :goto_1

    :catchall_2
    move-exception p2

    goto :goto_3

    .line 494
    :catch_2
    :goto_1
    :try_start_6
    new-instance p1, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p1}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string/jumbo p2, "reason"

    .line 495
    invoke-virtual {p1, p2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "WRITE_PHOTO_ERROR"

    .line 496
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    .line 497
    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {p2, p1}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    .line 498
    invoke-static {v0, v1}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v2, :cond_7

    .line 500
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_7

    .line 501
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    :goto_2
    return-void

    :goto_3
    if-eqz v2, :cond_8

    .line 500
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_8

    .line 501
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    throw p2
.end method


# virtual methods
.method public declared-synchronized confirmUploadPhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 507
    :try_start_0
    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 508
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {v0, p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "path"

    .line 512
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "identifier"

    .line 513
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->identifier:Ljava/lang/String;

    const-string/jumbo v3, "v"

    .line 514
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->v:Ljava/lang/String;

    const-string v3, "bizCode"

    .line 515
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->bizCode:Ljava/lang/String;

    const-string v3, "extraInfo"

    .line 516
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->extraInfo:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 525
    :try_start_2
    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object p2

    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 526
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 527
    iput-object v2, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->filePath:Ljava/lang/String;

    .line 528
    invoke-virtual {p0, v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->upload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    goto :goto_0

    .line 530
    :cond_0
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    const-string v0, "HY_PARAM_ERR"

    invoke-direct {p2, v0}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 532
    :goto_0
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "WVCamera"

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmUploadPhoto fail, params: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance p2, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {p2}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v1, "HY_PARAM_ERR"

    .line 520
    invoke-virtual {p2, v1}, Landroid/taobao/windvane/jsbridge/WVResult;->setResult(Ljava/lang/String;)V

    const-string v1, "msg"

    .line 521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PARAM_ERROR :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 523
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 5

    const-string/jumbo v0, "takePhoto"

    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v3, "Run with some exception!"

    const-string v4, "WVCamera"

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.CAMERA"

    filled-new-array {v2, v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$2;

    invoke-direct {v0, p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera$2;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$1;

    invoke-direct {p2, p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVCamera$1;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 84
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-static {v4, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "confirmUploadPhoto"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    :try_start_1
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;

    invoke-direct {v0, p0, p3, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera$4;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v0}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    new-instance p2, Landroid/taobao/windvane/jsbridge/api/WVCamera$3;

    invoke-direct {p2, p0, p3}, Landroid/taobao/windvane/jsbridge/api/WVCamera$3;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    .line 106
    invoke-virtual {p1, p2}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/taobao/windvane/runtimepermission/PermissionProposer$PermissionRequestTask;->execute()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 115
    invoke-static {v4, v3}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    .line 298
    invoke-static {}, Landroid/taobao/windvane/util/TaoLog;->getLogStatus()Z

    move-result v3

    const-string v4, "WVCamera"

    if-eqz v3, :cond_0

    .line 299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takePhoto callback, requestCode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";resultCode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_0
    new-instance v3, Landroid/taobao/windvane/jsbridge/WVResult;

    invoke-direct {v3}, Landroid/taobao/windvane/jsbridge/WVResult;-><init>()V

    const-string v5, "//127.0.0.1/wvcache/photo.jpg?_wvcrc=1&t="

    const-string v6, "pick photo fail, picture not exist, picturePath: "

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v10, "CANCELED_BY_USER"

    const-string v11, "msg"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    if-eqz p3, :cond_5

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "fileList"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 319
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    .line 320
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 323
    invoke-virtual {v3, v11, v10}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    .line 327
    :cond_2
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v7, :cond_c

    .line 330
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 331
    invoke-static {v11}, Landroid/taobao/windvane/file/FileAccesser;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    new-instance v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {v12, v1, v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 335
    invoke-static {v13}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 336
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v14, "url"

    .line 338
    iget-object v15, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v14, "localPath"

    .line 339
    invoke-virtual {v0, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "url:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " localPath:"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v7, -0x1

    if-ne v10, v0, :cond_3

    .line 347
    iput-object v3, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->images:Lorg/json/JSONArray;

    goto :goto_2

    .line 349
    :cond_3
    iput-boolean v8, v12, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->isLastPic:Z

    .line 351
    :goto_2
    invoke-direct {v1, v11, v13, v12}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    const-wide/16 v11, 0x64

    .line 353
    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v0

    .line 356
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 359
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 315
    :cond_5
    :goto_4
    invoke-virtual {v3, v11, v10}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    return-void

    :pswitch_1
    if-ne v2, v7, :cond_a

    if-eqz p3, :cond_a

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 369
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v7, "file"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 370
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    const-string v3, "_data"

    .line 372
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 373
    iget-object v7, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v11, v0

    move-object v12, v3

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 374
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 375
    aget-object v0, v3, v8

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 376
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 379
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pick photo fail, Cursor is empty, imageUri: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_8
    :goto_5
    invoke-static {v2}, Landroid/taobao/windvane/file/FileAccesser;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 384
    new-instance v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v3, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {v0, v1, v3}, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;-><init>(Landroid/taobao/windvane/jsbridge/api/WVCamera;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    .line 385
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 386
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/taobao/windvane/cache/WVCacheManager;->getInstance()Landroid/taobao/windvane/cache/WVCacheManager;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/taobao/windvane/cache/WVCacheManager;->getCacheDir(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->localUrl:Ljava/lang/String;

    .line 387
    invoke-static {v4}, Landroid/taobao/windvane/util/DigestUtils;->md5ToHex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 388
    invoke-direct {v1, v2, v3, v0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    return-void

    .line 391
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 394
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call pick photo fail. resultCode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v3, v11, v10}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    goto :goto_6

    :pswitch_2
    if-ne v2, v7, :cond_b

    .line 305
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    iget-object v2, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {v1, v0, v0, v2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    goto :goto_6

    .line 307
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "call takePhoto fail. resultCode: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-virtual {v3, v11, v10}, Landroid/taobao/windvane/jsbridge/WVResult;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, v1, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, v3}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Landroid/taobao/windvane/jsbridge/WVResult;)V

    :cond_c
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xfa1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized takePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 135
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 139
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    const-string p1, "camera"

    .line 146
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->openCamara()V

    goto :goto_0

    :cond_1
    const-string p1, "photo"

    .line 148
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    iget-object v0, v0, Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;->mode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 149
    invoke-direct {p0}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->chosePhoto()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/taobao/windvane/util/EnvUtil;->isCN()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->useCN:Z

    if-nez p1, :cond_3

    .line 153
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    const-string v0, "Take pictures"

    aput-object v0, p1, p2

    .line 154
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    const/4 p2, 0x1

    const-string v0, "Select from album"

    aput-object v0, p1, p2

    .line 156
    :cond_3
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    if-nez p1, :cond_4

    .line 157
    new-instance p1, Landroid/taobao/windvane/view/PopupWindowController;

    iget-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-interface {v0}, Landroid/taobao/windvane/webview/IWVWebView;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupMenuTags:[Ljava/lang/String;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->popupClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p1, p2, v0, v1, v2}, Landroid/taobao/windvane/view/PopupWindowController;-><init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    .line 159
    :cond_4
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mPopupController:Landroid/taobao/windvane/view/PopupWindowController;

    invoke-virtual {p1}, Landroid/taobao/windvane/view/PopupWindowController;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "WVCamera"

    .line 161
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/taobao/windvane/util/TaoLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public takePhotoPlus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    invoke-direct {p0, p1, p3}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->initTakePhoto(Landroid/taobao/windvane/jsbridge/WVCallBackContext;Ljava/lang/String;)V

    .line 130
    iput-object p2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mLocalPath:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mParams:Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;

    invoke-direct {p0, p2, p2, p1}, Landroid/taobao/windvane/jsbridge/api/WVCamera;->zoomPicAndCallback(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "WVCamera"

    const-string/jumbo p2, "takePhotoPlus fail, params error"

    .line 126
    invoke-static {p1, p2}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected upload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;)V
    .locals 3

    .line 628
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    if-nez v0, :cond_0

    sget-object v0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadServiceClass:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 630
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 631
    const-class v1, Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 632
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    iput-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    .line 633
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mWebView:Landroid/taobao/windvane/webview/IWVWebView;

    invoke-virtual {v0, v1, v2}, Landroid/taobao/windvane/jsbridge/api/WVUploadService;->initialize(Landroid/content/Context;Landroid/taobao/windvane/webview/IWVWebView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create upload service error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadServiceClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WVCamera"

    invoke-static {v1, v0}, Landroid/taobao/windvane/util/TaoLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->uploadService:Landroid/taobao/windvane/jsbridge/api/WVUploadService;

    if-eqz v0, :cond_1

    .line 640
    iget-object v1, p0, Landroid/taobao/windvane/jsbridge/api/WVCamera;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v0, p1, v1}, Landroid/taobao/windvane/jsbridge/api/WVUploadService;->doUpload(Landroid/taobao/windvane/jsbridge/api/WVCamera$UploadParams;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    :cond_1
    return-void
.end method
