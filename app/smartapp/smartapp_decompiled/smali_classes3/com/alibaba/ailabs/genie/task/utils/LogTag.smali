.class public Lcom/alibaba/ailabs/genie/task/utils/LogTag;
.super Ljava/lang/Object;
.source "LogTag.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TaskService-"

.field public static final TAG_AI_CARE:Ljava/lang/String; = "TaskService-AiCare"

.field public static final TAG_APP:Ljava/lang/String; = "TaskService-App"

.field public static final TAG_SERVICE:Ljava/lang/String; = "TaskService-Service"

.field public static final TAG_STAND_BY:Ljava/lang/String; = "TaskService-Standby"

.field public static final TAG_VIDEO:Ljava/lang/String; = "TaskService-Video"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isMainThread()Z
    .locals 2

    .line 20
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
