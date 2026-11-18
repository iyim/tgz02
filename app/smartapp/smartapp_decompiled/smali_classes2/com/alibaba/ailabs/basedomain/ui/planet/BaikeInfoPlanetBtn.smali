.class public Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;
.super Landroid/widget/FrameLayout;
.source "BaikeInfoPlanetBtn.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x3e8

.field private static final HANDLER:Landroid/os/Handler;

.field private static final TAG:Ljava/lang/String; = "BaikeInfoPlanetBtn"


# instance fields
.field private mActionUrl:Ljava/lang/String;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNameAdapter:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;

.field private mNameVF:Landroid/widget/AdapterViewFlipper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->HANDLER:Landroid/os/Handler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 108
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_baike_infoplanet_entry_layout:I

    const/4 v0, 0x1

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 110
    sget p2, Lcom/alibaba/ailabs/basedomain/R$id;->baike_infoplanet_vf:I

    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/AdapterViewFlipper;

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameVF:Landroid/widget/AdapterViewFlipper;

    .line 112
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameVF:Landroid/widget/AdapterViewFlipper;

    const/4 p3, 0x2

    new-array v1, p3, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/high16 v4, 0x42280000    # 42.0f

    .line 116
    invoke-static {p1, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v1, v0

    const-string v5, "translationY"

    .line 112
    invoke-static {p2, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v6, 0x3e8

    .line 116
    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 112
    invoke-virtual {p2, v1}, Landroid/widget/AdapterViewFlipper;->setOutAnimation(Landroid/animation/ObjectAnimator;)V

    .line 118
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameVF:Landroid/widget/AdapterViewFlipper;

    new-array p3, p3, [F

    .line 121
    invoke-static {p1, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    aput v1, p3, v3

    aput v2, p3, v0

    .line 118
    invoke-static {p2, v5, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 122
    invoke-virtual {p3, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 118
    invoke-virtual {p2, p3}, Landroid/widget/AdapterViewFlipper;->setInAnimation(Landroid/animation/ObjectAnimator;)V

    .line 125
    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameVF:Landroid/widget/AdapterViewFlipper;

    const/16 p3, 0x1770

    invoke-virtual {p2, p3}, Landroid/widget/AdapterViewFlipper;->setFlipInterval(I)V

    .line 127
    new-instance p2, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;

    sget p3, Lcom/alibaba/ailabs/basedomain/R$layout;->base_domain_baike_infoplanet_entry_item:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p2, p1, p3, v0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameAdapter:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;

    .line 129
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameVF:Landroid/widget/AdapterViewFlipper;

    iget-object p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameAdapter:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;

    invoke-virtual {p1, p2}, Landroid/widget/AdapterViewFlipper;->setAdapter(Landroid/widget/Adapter;)V

    .line 131
    invoke-virtual {p0, p0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string v0, "BaikeInfoPlanetBtn"

    if-ne p1, p0, :cond_0

    .line 183
    :try_start_0
    sget-object p1, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->HANDLER:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 185
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mActionUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    .line 186
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionUrl = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mActionUrl:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "startActivity() success"

    .line 191
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startActivity() error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/common/BaiKeUTReporter;->infoPlanetClick()V

    :cond_0
    return-void
.end method

.method public setActionUrl(Ljava/lang/String;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mActionUrl:Ljava/lang/String;

    return-void
.end method

.method public setNameList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameAdapter:Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->refresh(Ljava/util/List;)V

    return-void
.end method

.method public start()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameVF:Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Landroid/widget/AdapterViewFlipper;->startFlipping()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->mNameVF:Landroid/widget/AdapterViewFlipper;

    invoke-virtual {v0}, Landroid/widget/AdapterViewFlipper;->stopFlipping()V

    return-void
.end method

.method public update(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;)V
    .locals 4

    const-string v0, "BaikeInfoPlanetBtn"

    if-nez p1, :cond_0

    const-string p1, "baikePlanetInfo is null, setVisibility GONE"

    .line 136
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->stop()V

    const/16 p1, 0x8

    .line 138
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->setVisibility(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 142
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->setVisibility(I)V

    .line 144
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->getCardNames()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->setNameList(Ljava/util/List;)V

    .line 150
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->start()V

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "genie://com.alibaba.ailabs.genie.infoplanet/home?name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "&entityType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/BaikePlanetInfo;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;->setActionUrl(Ljava/lang/String;)V

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nameList "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , actionUrl = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "setVisibility VISIBLE"

    .line 160
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
