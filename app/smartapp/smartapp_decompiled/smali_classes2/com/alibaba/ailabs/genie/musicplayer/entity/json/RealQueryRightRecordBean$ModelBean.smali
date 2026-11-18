.class public Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;
.super Ljava/lang/Object;
.source "RealQueryRightRecordBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelBean"
.end annotation


# instance fields
.field private deadline:Ljava/lang/String;

.field private status:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getDeadline()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;->deadline:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;->status:J

    return-wide v0
.end method

.method public setDeadline(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;->deadline:Ljava/lang/String;

    return-void
.end method

.method public setStatus(J)V
    .locals 0

    .line 88
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;->status:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ModelBean{, deadline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;->deadline:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/entity/json/RealQueryRightRecordBean$ModelBean;->status:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
