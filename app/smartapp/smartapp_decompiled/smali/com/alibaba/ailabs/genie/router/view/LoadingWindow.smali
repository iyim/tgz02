.class public Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;
.super Ljava/lang/Object;
.source "LoadingWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;,
        Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;
    }
.end annotation


# static fields
.field private static beforeUri:Ljava/lang/String; = null

.field private static mContext:Landroid/content/Context; = null

.field private static mExitWindowReceiver:Landroid/content/BroadcastReceiver; = null

.field private static mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler; = null

.field private static volatile mIsRegister:Z = false

.field private static mLoadingData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;",
            ">;"
        }
    .end annotation
.end field

.field private static mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

.field private static mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

.field private static mUri:Ljava/lang/String;

.field private static mtoken:J

.field private static wManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    new-instance v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mExitWindowReceiver:Landroid/content/BroadcastReceiver;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;
    .locals 1

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    return-object v0
.end method

.method static synthetic access$100()J
    .locals 2

    .line 38
    sget-wide v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mtoken:J

    return-wide v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingData:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300()Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;
    .locals 1

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    return-object v0
.end method

.method static synthetic access$400()Lcom/alibaba/ailabs/genie/router/view/LoadingView;
    .locals 1

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/router/view/LoadingView;)Lcom/alibaba/ailabs/genie/router/view/LoadingView;
    .locals 0

    .line 38
    sput-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    return-object p0
.end method

.method static synthetic access$500()Landroid/view/WindowManager;
    .locals 1

    .line 38
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->wManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public static checkUri(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 446
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.alibaba.ailabs.genie.webapps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 447
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 448
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 449
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 450
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "/open"

    .line 451
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "/h5/game"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "/webview/open"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static exitWindows(J)V
    .locals 4

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "really removeLoadingWindow; mToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mtoken:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; from_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAIRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    .line 131
    :try_start_0
    sget-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingData:Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingData:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    sget-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingData:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->setSendCloseMessage(Z)V

    .line 134
    :cond_0
    sget-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    if-eqz p0, :cond_1

    .line 136
    sget-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->removeMessages(I)V

    .line 138
    sget-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    sget-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static killProcess(Ljava/lang/String;)V
    .locals 3

    .line 427
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 428
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 431
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    iget p0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 433
    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 438
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static killProcessByPackagename(Ljava/lang/String;)V
    .locals 7

    .line 460
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 463
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "forceStopPackage"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 464
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 465
    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    .line 467
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static postDelayedMessage(JLjava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "begin post delay PostDelayedMessage; token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; delayCloseLoadWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAIRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 155
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "token"

    .line 156
    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "packageName"

    .line 157
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p0, "uri"

    .line 158
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "delay"

    .line 159
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p0, 0x1

    .line 161
    iput p0, v0, Landroid/os/Message;->what:I

    .line 162
    sget-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    if-eqz p0, :cond_0

    int-to-long p1, p4

    .line 163
    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static registTaskClient(J)V
    .locals 0

    .line 373
    :try_start_0
    new-instance p0, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    sget-object p1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    .line 374
    sget-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    new-instance p1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$2;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->setSceneInfo(Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;)V

    .line 403
    sget-object p0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 405
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static registerExitWindowBroadcast()V
    .locals 3

    .line 356
    sget-boolean v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mIsRegister:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 358
    sput-boolean v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mIsRegister:Z

    const-string v0, "GenieAIRouter"

    const-string/jumbo v1, "registerExitWindowBroadcast"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.alibaba.ailabs.genie.smartapp.exit.loadwindow"

    .line 363
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 364
    sget-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mExitWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static showLoadingWindow(Landroid/app/Activity;Ljava/lang/String;ZZLjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJ)V
    .locals 14

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p11

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showLoadingWindow; uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenieAIRouter"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingData:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingData:Ljava/util/Map;

    .line 62
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 63
    new-instance v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;-><init>()V

    const/4 v2, 0x0

    .line 64
    invoke-virtual {v0, v2}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->setSendCloseMessage(Z)V

    .line 65
    invoke-virtual {v0, v11}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingData;->setPackageName(Ljava/lang/String;)V

    .line 66
    sget-object v3, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingData:Ljava/util/Map;

    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    .line 68
    invoke-virtual {v0, v3}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;->removeMessages(I)V

    .line 70
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    move-object v3, p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 71
    new-instance v4, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    invoke-direct {v4, v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    sput-object v4, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mHandler:Lcom/alibaba/ailabs/genie/router/view/LoadingWindow$LoadingHandler;

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mContext:Landroid/content/Context;

    .line 77
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sput-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->wManager:Landroid/view/WindowManager;

    .line 80
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    if-eqz v0, :cond_2

    .line 82
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "last window removeLoadingWindow; uri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->endPro()V

    .line 84
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->wManager:Landroid/view/WindowManager;

    sget-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    :cond_2
    :goto_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v3, 0x508

    .line 92
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 95
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_3

    const/16 v3, 0x7f6

    .line 96
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_3
    const/16 v3, 0x7d3

    .line 98
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_1
    const/4 v3, -0x3

    .line 101
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 104
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 105
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 107
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 108
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 110
    new-instance v1, Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    sget-object v2, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    .line 111
    sget-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p10

    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/router/view/LoadingView;->setData(Ljava/lang/String;ZZLjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 113
    sget-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->wManager:Landroid/view/WindowManager;

    sget-object v2, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mLoadingView:Lcom/alibaba/ailabs/genie/router/view/LoadingView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mUri:Ljava/lang/String;

    sput-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->beforeUri:Ljava/lang/String;

    .line 117
    sput-object v10, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mUri:Ljava/lang/String;

    .line 118
    sput-wide v12, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mtoken:J

    .line 120
    invoke-static {}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->registerExitWindowBroadcast()V

    .line 121
    invoke-static/range {p11 .. p12}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->registTaskClient(J)V

    move/from16 v1, p9

    .line 122
    invoke-static {v12, v13, v11, v10, v1}, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->postDelayedMessage(JLjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static unRegisterExitWindowBroadcast()V
    .locals 2

    .line 409
    sget-boolean v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mIsRegister:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 410
    sput-boolean v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mIsRegister:Z

    const-string v0, "GenieAIRouter"

    const-string/jumbo v1, "unRegisterExitWindowBroadcast"

    .line 411
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mExitWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 416
    :try_start_0
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lcom/alibaba/ailabs/genie/router/view/LoadingWindow;->mTaskClient:Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/task/TaskClient;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
