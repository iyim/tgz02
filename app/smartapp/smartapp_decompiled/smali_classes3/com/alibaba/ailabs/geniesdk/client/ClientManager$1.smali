.class Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;
.super Ljava/lang/Object;
.source "ClientManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/geniesdk/client/ClientManager;->playTTSWithCallback(Ljava/lang/String;Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

.field final synthetic val$cb:Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/geniesdk/client/ClientManager;Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;Ljava/lang/String;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;->this$0:Lcom/alibaba/ailabs/geniesdk/client/ClientManager;

    iput-object p2, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;->val$cb:Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    iput-object p3, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 243
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;->val$cb:Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;-><init>(Lcom/yunos/tv/alitvasr/IAliTVASRTTSCallback;)V

    .line 244
    invoke-static {}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->getInstance()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;->playVoice(Ljava/lang/String;Lcom/alibaba/ailabs/geniesdk/tts/VoiceCallback;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 246
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playTTSWithCallback, ret= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", tts = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/client/ClientManager$1;->val$content:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
