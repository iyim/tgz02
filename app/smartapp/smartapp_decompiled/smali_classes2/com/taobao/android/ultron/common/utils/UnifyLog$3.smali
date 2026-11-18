.class final Lcom/taobao/android/ultron/common/utils/UnifyLog$3;
.super Ljava/lang/Object;
.source "UnifyLog.java"

# interfaces
.implements Lcom/taobao/android/ultron/common/utils/UnifyLog$OutputLogRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/ultron/common/utils/UnifyLog;->d(Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run(Ljava/lang/String;)V
    .locals 1

    .line 103
    invoke-static {}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
