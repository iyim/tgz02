.class final Lcom/taobao/android/ultron/common/utils/UnifyLog$4;
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

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public run(Ljava/lang/String;)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->access$100()Lcom/taobao/android/AliLogInterface;

    move-result-object v0

    invoke-static {}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/taobao/android/AliLogInterface;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "debug"

    .line 114
    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->access$200(Ljava/lang/String;Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
