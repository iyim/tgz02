.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;
.super Ljava/lang/Object;
.source "ContentPlay.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioExtBean"
.end annotation


# instance fields
.field private audioAnchor:Ljava/lang/String;

.field private audioFormat:Ljava/lang/String;

.field private audioId:Ljava/lang/String;

.field private audioSource:Ljava/lang/String;

.field private request_id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAudioAnchor()Ljava/lang/String;
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioAnchor:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioFormat()Ljava/lang/String;
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioId()Ljava/lang/String;
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioId:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioSource()Ljava/lang/String;
    .locals 1

    .line 865
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioSource:Ljava/lang/String;

    return-object v0
.end method

.method public getRequest_id()Ljava/lang/String;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->request_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAudioAnchor(Ljava/lang/String;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioAnchor:Ljava/lang/String;

    return-void
.end method

.method public setAudioFormat(Ljava/lang/String;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioFormat:Ljava/lang/String;

    return-void
.end method

.method public setAudioId(Ljava/lang/String;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioId:Ljava/lang/String;

    return-void
.end method

.method public setAudioSource(Ljava/lang/String;)V
    .locals 0

    .line 869
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioSource:Ljava/lang/String;

    return-void
.end method

.method public setRequest_id(Ljava/lang/String;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->request_id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 890
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioExtBean{audioAnchor=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioAnchor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", request_id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->request_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioSource:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", audioFormat=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/ContentPlay$AudioExtBean;->audioFormat:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
