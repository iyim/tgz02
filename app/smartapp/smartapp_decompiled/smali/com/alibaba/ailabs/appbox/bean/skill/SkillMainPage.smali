.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;
.super Ljava/lang/Object;
.source "SkillMainPage.java"


# instance fields
.field banner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;",
            ">;"
        }
    .end annotation
.end field

.field cate:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;",
            ">;"
        }
    .end annotation
.end field

.field content:Ljava/lang/String;

.field diyBanner:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillDiyBanner;",
            ">;"
        }
    .end annotation
.end field

.field skillClassroom:Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;

.field skillLiveSquare:Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;

.field skillRank:Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->banner:Ljava/util/List;

    return-object v0
.end method

.method public getCate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->cate:Ljava/util/List;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDiyBanner()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillDiyBanner;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->diyBanner:Ljava/util/List;

    return-object v0
.end method

.method public getSkillClassroom()Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->skillClassroom:Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;

    return-object v0
.end method

.method public getSkillLiveSquare()Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->skillLiveSquare:Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;

    return-object v0
.end method

.method public getSkillRank()Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->skillRank:Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    return-object v0
.end method

.method public setBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillBanner;",
            ">;)V"
        }
    .end annotation

    .line 25
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->banner:Ljava/util/List;

    return-void
.end method

.method public setCate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillCate;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->cate:Ljava/util/List;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->content:Ljava/lang/String;

    return-void
.end method

.method public setDiyBanner(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillDiyBanner;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->diyBanner:Ljava/util/List;

    return-void
.end method

.method public setSkillClassroom(Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->skillClassroom:Lcom/alibaba/ailabs/appbox/bean/skill/SkillClassroom;

    return-void
.end method

.method public setSkillLiveSquare(Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->skillLiveSquare:Lcom/alibaba/ailabs/appbox/bean/skill/SkillLiveSquare;

    return-void
.end method

.method public setSkillRank(Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillMainPage;->skillRank:Lcom/alibaba/ailabs/appbox/bean/skill/SkillRank;

    return-void
.end method
