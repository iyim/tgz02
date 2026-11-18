.class final Lcom/alibaba/android/umbrella/trace/UmbrellaTracker$1;
.super Landroid/os/Handler;
.source "UmbrellaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 135
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 136
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;

    if-eqz v0, :cond_1

    .line 137
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;

    .line 140
    iget-object v0, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    const-string v1, "errorCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;->args:Ljava/util/Map;

    const-string v2, "errorMsg"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 144
    :goto_0
    invoke-static {p1, v1, v0}, Lcom/alibaba/android/umbrella/trace/UmbrellaTracker;->commitFailureStability(Lcom/alibaba/android/umbrella/trace/UmbrellaInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
