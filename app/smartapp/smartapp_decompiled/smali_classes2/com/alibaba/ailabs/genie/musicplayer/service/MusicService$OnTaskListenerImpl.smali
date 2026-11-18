.class Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;
.super Ljava/lang/Object;
.source "MusicService.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/assistant/sdk/task/OnTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnTaskListenerImpl"
.end annotation


# instance fields
.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 1

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onScene(Ljava/lang/String;IILjava/lang/String;)Z
    .locals 0

    .line 834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "s:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", s1:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicService"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.alibaba.ailabs.genie.commonplayer/com.alibaba.ailabs.genie.commonplayer.activity.MainActivity"

    .line 836
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.alibaba.ailabs.genie.rtc/com.alibaba.ailabs.genie.rtc.voip.callin.VoipCallInActivity"

    .line 837
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.alibaba.ailabs.genie.rtc/com.alibaba.ailabs.genie.rtc.voip.callout.VoipCallOutActivity"

    .line 838
    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 839
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService$OnTaskListenerImpl;->ref:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    .line 840
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    if-eqz p1, :cond_1

    const-string p3, "quit, because of news is playing"

    .line 842
    invoke-static {p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 843
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->stop()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
