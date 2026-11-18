.class public Lcom/ta/audid/filesync/UtdidBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UtdidBroadcastReceiver.java"


# static fields
.field public static final ACTION_UTDID:Ljava/lang/String; = "com.action.utdid"

.field public static final INTENT_DATA:Ljava/lang/String; = "data"

.field public static final INTENT_SIGN:Ljava/lang/String; = "sign"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 28
    invoke-static {}, Lcom/ta/audid/utils/UtdidLogger;->d()V

    .line 31
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    :goto_0
    const-string v1, "com.action.utdid"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-static {}, Lcom/ta/audid/utils/TaskExecutor;->getInstance()Lcom/ta/audid/utils/TaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/ta/audid/filesync/UtdidBroadcastReceiver$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/ta/audid/filesync/UtdidBroadcastReceiver$1;-><init>(Lcom/ta/audid/filesync/UtdidBroadcastReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/ta/audid/utils/TaskExecutor;->submit(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
