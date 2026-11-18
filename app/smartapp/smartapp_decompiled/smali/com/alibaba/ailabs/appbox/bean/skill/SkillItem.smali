.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;
.super Ljava/lang/Object;
.source "SkillItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;
    }
.end annotation


# instance fields
.field private Providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;",
            ">;"
        }
    .end annotation
.end field

.field private cate:Ljava/lang/String;

.field private cateBgColor:Ljava/lang/String;

.field private cateIcon:Ljava/lang/String;

.field private command:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private icon:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private itemId:I

.field private itemType:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private video:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCate()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->cate:Ljava/lang/String;

    return-object v0
.end method

.method public getCateBgColor()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->cateBgColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCateIcon()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->cateIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->command:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->itemId:I

    return v0
.end method

.method public getItemType()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->itemType:Ljava/lang/String;

    return-object v0
.end method

.method public getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->Providers:Ljava/util/List;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideo()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->video:Ljava/lang/String;

    return-object v0
.end method

.method public setCate(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->cate:Ljava/lang/String;

    return-void
.end method

.method public setCateBgColor(Ljava/lang/String;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->cateBgColor:Ljava/lang/String;

    return-void
.end method

.method public setCateIcon(Ljava/lang/String;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->cateIcon:Ljava/lang/String;

    return-void
.end method

.method public setCommand(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->command:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->desc:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->icon:Ljava/lang/String;

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->image:Ljava/lang/String;

    return-void
.end method

.method public setItemId(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->itemId:I

    return-void
.end method

.method public setItemType(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->itemType:Ljava/lang/String;

    return-void
.end method

.method public setProviders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem$Provider;",
            ">;)V"
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->Providers:Ljava/util/List;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setVideo(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillItem;->video:Ljava/lang/String;

    return-void
.end method
