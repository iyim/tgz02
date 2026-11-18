.class public Lcom/alibaba/ailabs/genie/data/bean/ProtoSettingBean;
.super Ljava/lang/Object;
.source "ProtoSettingBean.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# instance fields
.field private protoVideoAutoTime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getProtoVideoAutoTime()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ProtoSettingBean;->protoVideoAutoTime:I

    return v0
.end method

.method public setProtoVideoAutoTime(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ProtoSettingBean;->protoVideoAutoTime:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProtoSettingBean{protoVideoAutoTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ProtoSettingBean;->protoVideoAutoTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
