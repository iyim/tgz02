.class public Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;
.super Ljava/lang/Object;
.source "GroupBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public autoPlay:Z

.field public dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation
.end field

.field public domain:Ljava/lang/String;

.field public extend:Ljava/lang/String;

.field public groupName:Ljava/lang/String;

.field public groupType:Ljava/lang/String;

.field private hasExposed:Z

.field public hasMore:Z

.field public rank:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->autoPlay:Z

    .line 15
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->hasExposed:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->autoPlay:Z

    .line 15
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->hasExposed:Z

    .line 21
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->groupType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->autoPlay:Z

    .line 15
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->hasExposed:Z

    .line 17
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->groupType:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->groupName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAutoPlay()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->autoPlay:Z

    return v0
.end method

.method public getDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/globalsearch/data/ItemBean;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->dataList:Ljava/util/List;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getExtend()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->extend:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->groupName:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupType()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->groupType:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupTypeEnum()Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->groupType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;->nameOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/data/GroupType;

    move-result-object v0

    return-object v0
.end method

.method public getHasMore()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->hasMore:Z

    return v0
.end method

.method public getRank()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->rank:Ljava/lang/String;

    return-object v0
.end method

.method public hasExposed()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->hasExposed:Z

    return v0
.end method

.method public setAutoPlay(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->autoPlay:Z

    return-void
.end method

.method public setHasExposed(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->hasExposed:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GroupBean{groupName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", groupType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->groupType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", autoPlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->autoPlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/globalsearch/data/GroupBean;->hasMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
