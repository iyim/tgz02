.class public Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;
.super Ljava/lang/Object;
.source "BinderUICtr.java"


# static fields
.field private static final ISNEEDSHOW:I = 0x3ea

.field private static final ISONLINE:I = 0x3e9

.field public static final NET_BLOCK_QRCODE:I = 0x4

.field public static final NET_CONNECTED:I = 0x0

.field public static final NET_CONNECTING:I = 0x2

.field public static final NET_DISCONNECT:I = 0x1

.field public static final NET_QRCODE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BinderUICtr"

.field private static instace:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;


# instance fields
.field private final DELAY_TIME:I

.field private failCount:I

.field private mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

.field private mContent:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mState:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7d0

    .line 46
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->DELAY_TIME:I

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->failCount:I

    const/4 v0, 0x2

    .line 48
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContent:Ljava/lang/String;

    .line 50
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr$1;-><init>(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isMember()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BinderUICtr"

    const-string v0, "is member not need bind"

    .line 101
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isMember()Z

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->show(ZLjava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isNetworkAvalible(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 105
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    if-eqz p1, :cond_1

    .line 107
    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setOnLine(I)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e9

    const-wide/16 v1, 0x1b58

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;Landroid/content/Context;)Z
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isNetworkAvalible(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->failCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->failCount:I

    return p1
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    return p0
.end method

.method static synthetic access$302(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    return p1
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;)Landroid/os/Handler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static getinstace(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;
    .locals 2

    .line 130
    sget-object v0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->instace:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    if-nez v0, :cond_1

    .line 131
    const-class v0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->instace:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    if-nez v1, :cond_0

    .line 133
    new-instance v1, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->instace:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    .line 135
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 137
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->instace:Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;

    return-object p0
.end method

.method private isMember()Z
    .locals 5

    .line 117
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "userType"

    .line 120
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "BinderUICtr"

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "userType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method private isNeedShow()Z
    .locals 3

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isNetworkAvalible(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connectivity"

    .line 190
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 196
    :cond_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 199
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 201
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private show(ZLjava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNeedShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isNeedShow()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMember = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", content = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BinderUICtr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isNeedShow()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 175
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    if-nez p1, :cond_0

    .line 176
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    .line 178
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 179
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/assistant/Utils/RomSystemSetting;->sendVirtualKeyNow(I)V

    .line 180
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->show()V

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    iget v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->setOnLine(I)V

    .line 183
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-virtual {p1, p2}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->bindUser(Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public hideAsrUI()V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object v0

    const/4 v1, 0x0

    .line 213
    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->hideUi(Z)V

    :cond_0
    return-void
.end method

.method public hideBindUI(Z)V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->dismiss()V

    .line 227
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->showAsrUI()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    const/16 v1, 0x3ea

    if-eqz p1, :cond_1

    .line 231
    invoke-static {}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->getInstance()Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/genie/assistant/location/LocationManager;->startLocation(Landroid/content/Context;)V

    .line 232
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureSvr;->enableGesture(Z)V

    .line 233
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 234
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContent:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, "BinderUICtr"

    const-string v2, "sendEmptyMessageDelayed ISNEEDSHOW"

    .line 236
    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 239
    :goto_0
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mBindDialog:Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/ui/BindUserDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onActivityChange(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "/com.android.settings.network.wifi.WifiSettingActivity"

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "BinderUICtr"

    const-string v0, "onActivityChange hideBindUI false"

    .line 250
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 251
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->hideBindUI(Z)V

    :cond_0
    return-void
.end method

.method public showAsrUI()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/assistant/Utils/CommUtil;->isHomePage(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getInstance()Lcom/alibaba/ailabs/geniesdk/AguiCtx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/AguiCtx;->getUiManager()Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;

    move-result-object v0

    const/4 v1, 0x1

    .line 220
    invoke-interface {v0, v1}, Lcom/alibaba/ailabs/geniesdk/ui/IBaseView;->showUi(Z)V

    :cond_0
    return-void
.end method

.method public showBindUI(Ljava/lang/String;)V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->isNetworkAvalible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "block"

    .line 152
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    .line 153
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 155
    iput v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    .line 157
    :goto_0
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContent:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x1

    .line 160
    iput p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mState:I

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContent:Ljava/lang/String;

    .line 163
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->hideAsrUI()V

    .line 164
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isMemberType()Z

    move-result p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mContent:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->show(ZLjava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/BinderUICtr;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
