.class public Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;
.super Ljava/lang/Object;
.source "ChildFaceRecognizeBean.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/proguard/IKeepFieldName;


# instance fields
.field private enable:Z


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
.method public isEnable()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;->enable:Z

    return v0
.end method

.method public setEnable(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;->enable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildFaceRecognizeBean{enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/data/bean/ChildFaceRecognizeBean;->enable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
