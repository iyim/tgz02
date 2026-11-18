.class public Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;
.super Ljava/lang/Object;
.source "SkillDetailItem.java"


# instance fields
.field private accountButtonName:Ljava/lang/String;

.field private accountUrl:Ljava/lang/String;

.field private applyInfo:Lcom/alibaba/fastjson/JSONObject;

.field private authType:I

.field private bottomButtonAction:Lcom/alibaba/fastjson/JSONObject;

.field private bottomButtonName:Ljava/lang/String;

.field private buttonName:Ljava/lang/String;

.field private buttonUrl:Ljava/lang/String;

.field private cateBgColor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cateIcon:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private comment:Lcom/alibaba/fastjson/JSONObject;

.field private desc:Ljava/lang/String;

.field private id:I

.field private image:Ljava/lang/String;

.field private invocationName:Ljava/lang/String;

.field private isCommented:Z

.field private newSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private oldSamples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;"
        }
    .end annotation
.end field

.field private providers:Lcom/alibaba/fastjson/JSONArray;

.field private shortDesc:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private topButtonAction:Lcom/alibaba/fastjson/JSONObject;

.field private topButtonName:Ljava/lang/String;

.field private videoThumbUrl:Ljava/lang/String;

.field private videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAccountButtonName()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->accountButtonName:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountUrl()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->accountUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getApplyInfo()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->applyInfo:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getAuthType()I
    .locals 1

    .line 144
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->authType:I

    return v0
.end method

.method public getBottomButtonAction()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->bottomButtonAction:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getBottomButtonName()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->bottomButtonName:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonName()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->buttonName:Ljava/lang/String;

    return-object v0
.end method

.method public getButtonUrl()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->buttonUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCateBgColor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->cateBgColor:Ljava/util/List;

    return-object v0
.end method

.method public getCateIcon()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->cateIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getComment()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->comment:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 136
    iget v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->id:I

    return v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getInvocationName()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->invocationName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->newSamples:Ljava/util/List;

    return-object v0
.end method

.method public getOldSamples()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->oldSamples:Ljava/util/List;

    return-object v0
.end method

.method public getProviders()Lcom/alibaba/fastjson/JSONArray;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->providers:Lcom/alibaba/fastjson/JSONArray;

    return-object v0
.end method

.method public getShortDesc()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->shortDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTopButtonAction()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->topButtonAction:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getTopButtonName()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->topButtonName:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoThumbUrl()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->videoThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->videoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isCommented()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->isCommented:Z

    return v0
.end method

.method public setAccountButtonName(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->accountButtonName:Ljava/lang/String;

    return-void
.end method

.method public setAccountUrl(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->accountUrl:Ljava/lang/String;

    return-void
.end method

.method public setApplyInfo(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->applyInfo:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setAuthType(I)V
    .locals 0

    .line 148
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->authType:I

    return-void
.end method

.method public setBottomButtonAction(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->bottomButtonAction:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setBottomButtonName(Ljava/lang/String;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->bottomButtonName:Ljava/lang/String;

    return-void
.end method

.method public setButtonName(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->buttonName:Ljava/lang/String;

    return-void
.end method

.method public setButtonUrl(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->buttonUrl:Ljava/lang/String;

    return-void
.end method

.method public setCateBgColor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->cateBgColor:Ljava/util/List;

    return-void
.end method

.method public setCateIcon(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->cateIcon:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->category:Ljava/lang/String;

    return-void
.end method

.method public setComment(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->comment:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setCommented(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->isCommented:Z

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->desc:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->id:I

    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->image:Ljava/lang/String;

    return-void
.end method

.method public setInvocationName(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->invocationName:Ljava/lang/String;

    return-void
.end method

.method public setNewSamples(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 180
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->newSamples:Ljava/util/List;

    return-void
.end method

.method public setOldSamples(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/JSONArray;",
            ">;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->oldSamples:Ljava/util/List;

    return-void
.end method

.method public setProviders(Lcom/alibaba/fastjson/JSONArray;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->providers:Lcom/alibaba/fastjson/JSONArray;

    return-void
.end method

.method public setShortDesc(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->shortDesc:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->title:Ljava/lang/String;

    return-void
.end method

.method public setTopButtonAction(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->topButtonAction:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setTopButtonName(Ljava/lang/String;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->topButtonName:Ljava/lang/String;

    return-void
.end method

.method public setVideoThumbUrl(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->videoThumbUrl:Ljava/lang/String;

    return-void
.end method

.method public setVideoUrl(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->videoUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SkillDetailItem{invocationName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->invocationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->videoUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", isCommented="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->isCommented:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", authType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->authType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", image=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", videoThumbUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->videoThumbUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", oldSamples="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->oldSamples:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newSamples="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->newSamples:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", comment="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->comment:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", applyInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->applyInfo:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", providers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->providers:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", desc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->desc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", category=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", cateBgColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->cateBgColor:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cateIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->cateIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shortDesc=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->shortDesc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", buttonName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->buttonName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", buttonUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->buttonUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", accountButtonName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->accountButtonName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", accountUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->accountUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", topButtonName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->topButtonName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", topButtonAction="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->topButtonAction:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bottomButtonName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->bottomButtonName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", bottomButtonAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/appbox/bean/skill/SkillDetailItem;->bottomButtonAction:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
