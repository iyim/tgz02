.class public final Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuSvr;
.source "AgisSvr.java"

# interfaces
.implements Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;


# static fields
.field private static final AVATAR_KEY:Ljava/lang/String; = "avatar_key"

.field private static final LOCATION_KEY:Ljava/lang/String; = "location_key"

.field private static final LOGINTIME_KEY:Ljava/lang/String; = "login_time_key"

.field protected static final METHOD_AGUI_STATUS_CALLBACK:I = 0x36

.field private static final METHOD_AUDIO_CHECK_POINT:I = 0x46

.field private static final METHOD_AUTHORIZE:I = 0x3b

.field private static final METHOD_BUSINESS_EXTERNAL:I = 0x4b

.field private static final METHOD_DELETE_ALL_FACE_INFO:I = 0x42

.field private static final METHOD_DELETE_FACE_INFO:I = 0x3d

.field private static final METHOD_ENABLE_WAKEUP:I = 0x1

.field private static final METHOD_GET_ACCOUNT_INFO:I = 0x33

.field private static final METHOD_GET_AGUI_STATUS:I = 0x37

.field private static final METHOD_GET_CURRENT_SCENE:I = 0x3a

.field private static final METHOD_GET_PREVIOUS_END_TTS:I = 0x2

.field private static final METHOD_INIT_FACE_RECOGNIZE:I = 0x40

.field private static final METHOD_REGISTER_AGUI_STATUS:I = 0x34

.field private static final METHOD_REGISTER_FACE_INFO:I = 0x3c

.field private static final METHOD_SEND_EVENT_DIRECT:I = 0x39

.field private static final METHOD_SEND_EVENT_TO_SERVER:I = 0x0

.field private static final METHOD_SEND_TRACE:I = 0x38

.field private static final METHOD_START_FACE_RECOGNIZE:I = 0x3e

.field private static final METHOD_STOP_FACE_RECOGNIZE:I = 0x3f

.field private static final METHOD_SYSTEM:I = 0x32

.field private static final METHOD_UNINIT_FACE_RECOGNIZE:I = 0x41

.field private static final METHOD_UNREGISTER_AGUI_STATUS:I = 0x35

.field private static final MOBILE_KEY:Ljava/lang/String; = "mobile_key"

.field private static final NICKNAME_KEY:Ljava/lang/String; = "nick_name_key"

.field private static final QRCODE_TYPE:Ljava/lang/String; = "qrcode"

.field private static final SERVER_NAME:Ljava/lang/String; = "com.alibaba.ailabs.genie.assistant.agis"

.field private static final TAG:Ljava/lang/String; = "AgisSvr"

.field private static final TB_USER_ID_KEY:Ljava/lang/String; = "tb_user_id_key"

.field private static final TOKEN_KEY:Ljava/lang/String; = "token_key"

.field private static final USERID_KEY:Ljava/lang/String; = "userid_key"

.field private static final USER_TYPE:Ljava/lang/String; = "userType"

.field private static final UUID_KEY:Ljava/lang/String; = "uuid_key"

.field private static sInstance:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;


# instance fields
.field private mAVECallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

.field private mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

.field private mClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceRecognizeClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFaceRecognizeEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuSvr;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 70
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mFaceRecognizeClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p1, 0x0

    .line 71
    iput-boolean p1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mIsFaceRecognizeEnable:Z

    .line 73
    new-instance p1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr$1;-><init>(Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVECallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    .line 108
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mFaceRecognizeClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mIsFaceRecognizeEnable:Z

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;
    .locals 2

    .line 111
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    if-nez v0, :cond_1

    .line 112
    const-class v0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    if-nez v1, :cond_0

    .line 114
    new-instance v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    .line 116
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 118
    :cond_1
    :goto_0
    sget-object p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->sInstance:Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;

    return-object p0
.end method

.method public static getServerName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.alibaba.ailabs.genie.assistant.agis"

    return-object v0
.end method


# virtual methods
.method public notifyGatewayStatus(Z)V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;

    .line 542
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->notifyGatewayStatus(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySessionStatus(I)V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;

    .line 554
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->notifySessionStatus(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyUserStatus(Z)V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;

    .line 548
    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->notifyUserStatus(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, ",eventName = "

    const-string v4, "ci"

    const-string v5, "en"

    const-string v6, "s"

    const-string v7, "AgisSvr"

    if-eqz v0, :cond_18

    const/4 v8, 0x1

    if-eq v0, v8, :cond_17

    const/4 v9, 0x2

    if-eq v0, v9, :cond_16

    const/16 v9, 0x46

    if-eq v0, v9, :cond_14

    const/16 v9, 0x4b

    const-string v11, ""

    if-eq v0, v9, :cond_12

    const-string v9, "e"

    packed-switch v0, :pswitch_data_0

    const-string v12, "str = "

    const-string v13, "face_id"

    const-string v14, "business"

    const-string v15, "memberId"

    const-string v10, "groupId"

    const-string v8, "r"

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_e

    .line 247
    :pswitch_0
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    .line 248
    new-instance v2, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 249
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mFaceRecognizeClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "clear"

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 253
    :try_start_0
    invoke-virtual {v2, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cmd"

    const-string v3, "clear"

    .line 254
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 258
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v2, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v2, :cond_0

    const-string v3, "FaceRecognize"

    .line 261
    invoke-virtual {v2, v3, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 263
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_f

    :pswitch_1
    const-string v0, "arg"

    .line 172
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v0, :cond_1

    const-string v2, "disable"

    const-string v3, "GenieFaceRecognizeVEngine"

    .line 175
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 177
    :cond_1
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->stop(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 178
    iput-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 179
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mFaceRecognizeClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    .line 181
    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_f

    :pswitch_2
    const-string v0, "arg"

    .line 158
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-nez v0, :cond_2

    .line 161
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVECallback:Lcom/alibaba/ailabs/acamera/IACameraCallback;

    const-string v2, "genieallinone"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/avesdk/AVEClientSdk;->getAVEService(Ljava/lang/String;Lcom/alibaba/ailabs/acamera/IACameraCallback;)Lcom/alibaba/ailabs/avesdk/AVEClient;

    move-result-object v0

    iput-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    .line 163
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/avesdk/AVEClient;->start(Landroid/content/Context;)V

    .line 164
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    const-string v2, "enable"

    const-string v3, "GenieFaceRecognizeVEngine"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    .line 166
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    .line 167
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_f

    :pswitch_3
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 279
    iput-boolean v2, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mIsFaceRecognizeEnable:Z

    .line 280
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_f

    :pswitch_4
    const/4 v3, 0x1

    .line 269
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    .line 270
    new-instance v2, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 271
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mFaceRecognizeClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "detect"

    invoke-virtual {v0, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iput-boolean v3, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mIsFaceRecognizeEnable:Z

    .line 273
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 274
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_f

    .line 218
    :pswitch_5
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    .line 219
    new-instance v3, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 220
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mFaceRecognizeClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "remove"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 226
    :try_start_1
    invoke-virtual {v3, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cmd"

    const-string v5, "remove"

    .line 227
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 229
    invoke-virtual {v4, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    invoke-virtual {v4, v15, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 231
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 233
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 235
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v2, :cond_3

    const-string v3, "FaceRecognize"

    .line 238
    invoke-virtual {v2, v3, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    .line 240
    :goto_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 241
    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_f

    .line 187
    :pswitch_6
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    .line 188
    new-instance v3, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Lcom/alibaba/ailabs/geniesdk/svr/FaceRecognizeClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 189
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mFaceRecognizeClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "add"

    invoke-virtual {v0, v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "imgPath"

    .line 192
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 196
    :try_start_2
    invoke-virtual {v4, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "cmd"

    const-string v6, "add"

    .line 197
    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 199
    invoke-virtual {v5, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    invoke-virtual {v5, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "imgPath"

    .line 201
    invoke-virtual {v5, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    .line 202
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    .line 204
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 206
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mAVEClient:Lcom/alibaba/ailabs/avesdk/AVEClient;

    if-eqz v2, :cond_4

    const-string v3, "FaceRecognize"

    .line 209
    invoke-virtual {v2, v3, v0}, Lcom/alibaba/ailabs/avesdk/AVEClient;->ioctl(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    .line 211
    :goto_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    invoke-virtual {v0, v8, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_f

    .line 487
    :pswitch_7
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 488
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 491
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->authorize(Ljava/lang/String;)I

    move-result v0

    goto :goto_6

    :cond_5
    const/16 v0, 0x101

    .line 495
    :goto_6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "d"

    .line 496
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 477
    :pswitch_8
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/comm/task/TaskSvr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/comm/task/TaskSvr;->getCurrentScene()Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 481
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    if-eqz v0, :cond_6

    goto :goto_7

    :cond_6
    move-object v0, v11

    .line 482
    :goto_7
    invoke-virtual {v2, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    .line 479
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 481
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 482
    invoke-virtual {v0, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 481
    :goto_8
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 482
    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :pswitch_9
    const-string v0, "ens"

    .line 315
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 316
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "pl"

    .line 317
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 318
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 320
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v8

    if-nez v8, :cond_7

    goto/16 :goto_e

    .line 325
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEventDirect  eventNs= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",commonInfo = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",payLoad="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    .line 330
    invoke-virtual/range {v8 .. v13}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToCloud(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 331
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 332
    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 453
    :pswitch_a
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string v0, "et"

    .line 456
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 458
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 459
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "ei"

    .line 460
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v9, v0

    move-object v10, v5

    move-object v11, v6

    move-object v12, v4

    move-object v13, v2

    .line 461
    invoke-virtual/range {v8 .. v13}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendTrace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "METHOD_SEND_TRACE eventType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",source = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",contextInfo = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",extendInfo = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_8
    const-string v0, "METHOD_SEND_TRACE ailabs is null"

    .line 468
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 437
    :pswitch_b
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 438
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 439
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_9

    .line 443
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get agui status type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "aguiStatusGateway"

    .line 444
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 445
    invoke-virtual {v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isOnLine()Z

    move-result v0

    const-string v3, "status"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_9

    :cond_a
    const-string v4, "aguiStatusUser"

    .line 446
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 447
    invoke-virtual {v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->isMemberType()Z

    move-result v0

    const-string v3, "status"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_b
    :goto_9
    move-object v0, v2

    goto/16 :goto_f

    .line 427
    :pswitch_c
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 428
    iget-object v2, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;

    if-eqz v2, :cond_c

    .line 430
    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->unlinkToDeath()V

    .line 432
    :cond_c
    iget-object v2, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister AguiCommonStatusClient id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 404
    :pswitch_d
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    .line 405
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    if-eqz v2, :cond_e

    .line 406
    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_b

    .line 411
    :cond_d
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->generateClientId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 413
    :try_start_5
    iget-object v0, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 414
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register AguiCommonStatusClient id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v3, v9, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v2, v1}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    .line 421
    invoke-virtual {v0, v4}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->setClientId(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->linkToDeath()V

    .line 423
    iget-object v2, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_e
    :goto_b
    const-string v0, "AGUI status client binder is null or dead"

    .line 407
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {v3, v9, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    move-object v0, v3

    goto/16 :goto_f

    .line 357
    :pswitch_e
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 358
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_GET_ACCOUNT_INFO "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "userInfo"

    .line 360
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 361
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v0

    iget-object v3, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 364
    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "userid_key"

    .line 365
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->USERID_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uuid_key"

    .line 366
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->UUID_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "token_key"

    .line 367
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MTOPTOKEN_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_9

    :catch_5
    move-exception v0

    .line 369
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :cond_f
    const-string v3, "userData"

    .line 372
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 373
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v0

    iget-object v3, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 374
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 376
    :try_start_7
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "location_key"

    .line 377
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->LOCATION_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "avatar_key"

    .line 378
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->AVATAR_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "login_time_key"

    .line 379
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->LOGINTIME_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mobile_key"

    .line 380
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->MOBILE_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nick_name_key"

    .line 381
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NICKNAME_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "tb_user_id_key"

    .line 382
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->NAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->TB_USER_ID_KEY:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_9

    :catch_6
    move-exception v0

    .line 384
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :cond_10
    const-string v3, "memberInfo"

    .line 387
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 388
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v0

    iget-object v3, v1, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getUserData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 391
    :try_start_8
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "userType"

    .line 392
    sget-object v4, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->ACTIVATENAMES:[Ljava/lang/String;

    sget v5, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->USER_TYPE:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto/16 :goto_9

    :catch_7
    move-exception v0

    .line 394
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9

    :cond_11
    const-string v3, "qrCode"

    .line 397
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 398
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getinstace()Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/geniesdk/util/UserDataFileUtils;->getQrcode()Ljava/lang/String;

    move-result-object v0

    const-string v3, "qrcode"

    .line 399
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 511
    :cond_12
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v3, "tp"

    .line 513
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "pr"

    .line 514
    invoke-virtual {v2, v4, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 515
    invoke-virtual {v0, v3, v2}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->businessExt(ILjava/lang/String;)Z

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "METHOD_BUSINESS_EXTERNAL type:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; params:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_13
    const-string v0, "METHOD_BUSINESS_EXTERNAL ai lab core is null"

    .line 518
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 500
    :cond_14
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v0

    if-eqz v0, :cond_15

    const-string v3, "pt"

    .line 502
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    .line 503
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->audioCheckPoint(II)V

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "METHOD_AUDIO_CHECK_POINT point:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_15
    const-string v0, "METHOD_AUDIO_CHECK_POINT ai lab core is null"

    .line 506
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 350
    :cond_16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 351
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getPreviousEndTtsId()I

    move-result v2

    .line 352
    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get previous end tts:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 337
    :cond_17
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getBoolean(Landroid/os/Bundle;)Z

    move-result v0

    .line 339
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableWakeup enable= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v2, v0}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->enableWakeup(Z)V

    goto :goto_e

    .line 286
    :cond_18
    invoke-static/range {p2 .. p2}, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->getBinder(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v0

    const-string v8, "ens"

    .line 287
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 288
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "pl"

    .line 289
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 290
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v0, :cond_1b

    .line 292
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_d

    .line 297
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEventToServer  eventNs= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",commonInfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",payLoad="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->getInstance()Lcom/alibaba/ailabs/geniesdk/AiLabsCore;

    move-result-object v9

    if-nez v9, :cond_1a

    goto :goto_e

    .line 306
    :cond_1a
    new-instance v14, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;

    invoke-direct {v14, v0}, Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;-><init>(Landroid/os/IBinder;)V

    invoke-virtual/range {v9 .. v14}, Lcom/alibaba/ailabs/geniesdk/AiLabsCore;->sendEventToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/client/NativeResponseCallback;)I

    move-result v0

    .line 309
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 310
    invoke-virtual {v2, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_9

    :cond_1b
    :goto_d
    const-string v0, "sendEventToServer  binder is died"

    .line 293
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    :goto_e
    const/4 v0, 0x0

    :goto_f
    return-object v0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDied(Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;)V
    .locals 2

    .line 531
    instance-of v0, p1, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;

    if-eqz v0, :cond_0

    .line 532
    nop

    nop

    .line 533
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/svr/AguiCommonStatusClient;->unlinkToDeath()V

    .line 535
    iget-object p1, p0, Lcom/alibaba/ailabs/geniesdk/svr/AgisSvr;->mClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AguiCommonStatusClient die id = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AgisSvr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
