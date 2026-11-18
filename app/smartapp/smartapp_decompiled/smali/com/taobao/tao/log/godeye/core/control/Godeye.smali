.class public Lcom/taobao/tao/log/godeye/core/control/Godeye;
.super Ljava/lang/Object;
.source "Godeye.java"

# interfaces
.implements Lcom/taobao/tao/log/godeye/api/control/IGodeye;


# static fields
.field public static final GODEYE_TAG:Ljava/lang/String; = "Godeye"

.field private static volatile instance:Lcom/taobao/tao/log/godeye/core/control/Godeye;


# instance fields
.field public godEyeAppListener:Lcom/taobao/tao/log/godeye/core/GodEyeAppListener;

.field public godEyeReponses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/taobao/tao/log/godeye/core/GodEyeReponse;",
            ">;"
        }
    .end annotation
.end field

.field private mAppId:Ljava/lang/String;

.field private mAppVersion:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mBuildId:Ljava/lang/String;

.field private mClientEventQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/taobao/tao/log/godeye/protocol/model/ClientEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mGodeyeCommandManager:Lcom/taobao/tao/log/godeye/core/command/GodeyeCommandManager;

.field private mGodeyeJointPointCenter:Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

.field private mGodeyeOnDemandCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

.field private mGodeyeRemoteCommandCenter:Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

.field private mInitialized:Z

.field private mIsDebugMode:Z

.field public utdid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->godEyeReponses:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mClientEventQueue:Ljava/util/List;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mInitialized:Z

    .line 70
    iput-boolean v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mIsDebugMode:Z

    return-void
.end method

.method private commandExecuteWhenInit()V
    .locals 7

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->defaultGodeyeRemoteCommandCenter()Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;->getCommandControllers()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 131
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    .line 132
    iput-boolean v1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mIsDebugMode:Z

    .line 133
    iget-object v2, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeOnDemandCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeOnDemandCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    invoke-virtual {v2}, Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;->doCallback()V

    .line 137
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/tao/log/godeye/protocol/control/Define$Entry;

    .line 138
    invoke-static {}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->defaultCommandManager()Lcom/taobao/tao/log/godeye/api/command/ICommandManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/taobao/tao/log/godeye/protocol/control/Define$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;

    invoke-interface {v3, v4}, Lcom/taobao/tao/log/godeye/api/command/ICommandManager;->getRawCommandString(Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;)Lcom/taobao/tao/log/godeye/api/command/TraceTask;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "tlog-debug"

    .line 140
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultCommandManager commandControllerEntry TraceTask = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/taobao/tao/log/godeye/api/command/TraceTask;->opCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {p0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->defaultGodeyeRemoteCommandCenter()Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

    move-result-object v4

    invoke-virtual {v2}, Lcom/taobao/tao/log/godeye/protocol/control/Define$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;

    invoke-virtual {v4, v2, v3, v1}, Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;->dispatchCommandInternal(Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;Lcom/taobao/tao/log/godeye/api/command/TraceTask;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static sharedInstance()Lcom/taobao/tao/log/godeye/core/control/Godeye;
    .locals 1

    .line 87
    sget-object v0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->instance:Lcom/taobao/tao/log/godeye/core/control/Godeye;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/taobao/tao/log/godeye/core/control/Godeye;

    invoke-direct {v0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;-><init>()V

    sput-object v0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->instance:Lcom/taobao/tao/log/godeye/core/control/Godeye;

    .line 90
    :cond_0
    sget-object v0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->instance:Lcom/taobao/tao/log/godeye/core/control/Godeye;

    return-object v0
.end method


# virtual methods
.method public addClientEvent(Lcom/taobao/tao/log/godeye/protocol/model/ClientEvent;)V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mClientEventQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public defaultCommandManager()Lcom/taobao/tao/log/godeye/api/command/ICommandManager;
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeCommandManager:Lcom/taobao/tao/log/godeye/core/command/GodeyeCommandManager;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lcom/taobao/tao/log/godeye/core/command/GodeyeCommandManager;

    iget-object v1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/godeye/core/command/GodeyeCommandManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeCommandManager:Lcom/taobao/tao/log/godeye/core/command/GodeyeCommandManager;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeCommandManager:Lcom/taobao/tao/log/godeye/core/command/GodeyeCommandManager;

    return-object v0
.end method

.method public bridge synthetic defaultGodeyeJointPointCenter()Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->defaultGodeyeJointPointCenter()Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    move-result-object v0

    return-object v0
.end method

.method public defaultGodeyeJointPointCenter()Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeJointPointCenter:Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    if-nez v0, :cond_0

    .line 268
    new-instance v0, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    iget-object v1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mApplication:Landroid/app/Application;

    invoke-direct {v0, v1}, Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;-><init>(Landroid/app/Application;)V

    iput-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeJointPointCenter:Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeJointPointCenter:Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    return-object v0
.end method

.method public defaultGodeyeRemoteCommandCenter()Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeRemoteCommandCenter:Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

    if-nez v0, :cond_0

    .line 275
    new-instance v0, Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

    invoke-direct {v0}, Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;-><init>()V

    iput-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeRemoteCommandCenter:Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeRemoteCommandCenter:Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mAppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method public getRuntimeStatData()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->godEyeAppListener:Lcom/taobao/tao/log/godeye/core/GodEyeAppListener;

    if-eqz v0, :cond_0

    .line 289
    :try_start_0
    invoke-interface {v0}, Lcom/taobao/tao/log/godeye/core/GodEyeAppListener;->getAppInfo()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "Godeye"

    const-string v1, "god eye app listener doesn\'t exist "

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_1

    .line 298
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    return-object v0
.end method

.method public handleRemoteCommand(Lcom/taobao/android/tlog/protocol/model/GodeyeInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 157
    iget-object v1, p1, Lcom/taobao/android/tlog/protocol/model/GodeyeInfo;->commandInfo:Lcom/taobao/android/tlog/protocol/model/CommandInfo;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 161
    :try_start_0
    iput-boolean v1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mIsDebugMode:Z

    .line 162
    invoke-virtual {p0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->defaultGodeyeRemoteCommandCenter()Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;->dispatchCommand(Lcom/taobao/android/tlog/protocol/model/GodeyeInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 166
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method public initialize(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mApplication:Landroid/app/Application;

    .line 102
    iput-object p2, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mAppId:Ljava/lang/String;

    .line 103
    iput-object p3, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mAppVersion:Ljava/lang/String;

    :try_start_0
    const-string/jumbo p2, "tlog-debug"

    const-string p3, "god-eye initialize"

    .line 105
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {p1}, Lcom/taobao/tao/log/godeye/core/plugin/PluginManager;->loadPlugin(Landroid/app/Application;)V

    .line 108
    iget-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeJointPointCenter:Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    if-nez p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->defaultGodeyeJointPointCenter()Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    move-result-object p1

    iput-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeJointPointCenter:Lcom/taobao/tao/log/godeye/core/control/GodeyeJointPointCenter;

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->commandExecuteWhenInit()V

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mInitialized:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isDebugMode()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mIsDebugMode:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .line 317
    iget-boolean v0, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mInitialized:Z

    return v0
.end method

.method public registerCommandController(Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;)V
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->defaultGodeyeRemoteCommandCenter()Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;

    move-result-object v0

    iget-object v1, p1, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;->opCode:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/taobao/tao/log/godeye/core/command/GodeyeRemoteCommandCenter;->registerCommandController(Ljava/lang/String;Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;)V

    return-void
.end method

.method public response(Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;Lcom/taobao/tao/log/godeye/api/command/ResponseData;)V
    .locals 9

    const-string v0, "Godeye"

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controller.opCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;->opCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "xxxxxxxx"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->extraData:Lcom/alibaba/fastjson/JSONObject;

    if-nez v1, :cond_1

    .line 179
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->extraData:Lcom/alibaba/fastjson/JSONObject;

    .line 183
    :cond_1
    iget-object v1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->extraData:Lcom/alibaba/fastjson/JSONObject;

    iget-object v2, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mBuildId:Ljava/lang/String;

    const-string v3, "appBuild"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget v1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->responseCode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/taobao/tao/log/godeye/core/control/Godeye;->getRuntimeStatData()Ljava/util/Map;

    move-result-object v1

    .line 190
    iget-object v3, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v4, "statData"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->extraData:Lcom/alibaba/fastjson/JSONObject;

    iget-object v3, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mClientEventQueue:Ljava/util/List;

    const-string v4, "clientEventQueue"

    invoke-virtual {v1, v4, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mApplication:Landroid/app/Application;

    invoke-static {v1}, Lcom/taobao/tao/log/godeye/core/plugin/PluginManager;->removeAllPlugins(Landroid/app/Application;)V

    .line 196
    :cond_2
    iget v1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->responseCode:I

    if-ne v1, v2, :cond_4

    .line 198
    :try_start_0
    iget-object v1, p1, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;->opCode:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;->getRequestId()Ljava/lang/String;

    move-result-object v2

    .line 200
    invoke-virtual {p1}, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;->getUploadId()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_3

    .line 202
    iget-object p1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "fileName"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    iget-object p1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->extraData:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v1, "tfsPath"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "application/x-perf-methodtrace"

    .line 205
    iget-object p1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->tokenData:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "ossObjectKey"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 206
    iget-object p1, p2, Lcom/taobao/tao/log/godeye/api/command/ResponseData;->tokenData:Lcom/alibaba/fastjson/JSONObject;

    const-string p2, "ossEndpoint"

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 209
    invoke-static/range {v2 .. v8}, Lcom/taobao/tao/log/task/MethodTraceReplyTask;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "you need regist god eye reponse"

    .line 211
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 215
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public setBuildId(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mBuildId:Ljava/lang/String;

    return-void
.end method

.method public setGodeyeOnDemandCallback(Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;)V
    .locals 0

    .line 337
    iput-object p1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->mGodeyeOnDemandCallback:Lcom/taobao/tao/log/godeye/api/control/IGodeyeJointPointCenter$GodeyeJointPointCallback;

    return-void
.end method

.method public upload(Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V
    .locals 3

    .line 242
    iget-object v0, p1, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;->opCode:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Lcom/taobao/tao/log/godeye/api/control/AbsCommandController;->getUploadId()Ljava/lang/String;

    move-result-object p1

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "god-eye stop method trace, upload, opCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uploadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tlog-debug"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/taobao/tao/log/godeye/core/control/Godeye;->godEyeReponses:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/tao/log/godeye/core/GodEyeReponse;

    if-eqz v0, :cond_0

    .line 248
    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/tao/log/godeye/core/GodEyeReponse;->sendFile(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/tao/log/upload/FileUploadListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "Godeye"

    const-string/jumbo p2, "you need regist god eye reponse"

    .line 250
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
