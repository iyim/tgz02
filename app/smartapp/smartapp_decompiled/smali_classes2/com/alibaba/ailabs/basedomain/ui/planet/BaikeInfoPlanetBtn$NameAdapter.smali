.class Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BaikeInfoPlanetBtn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private resourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 54
    iput-object p3, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->names:Ljava/util/List;

    .line 55
    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->resourceId:I

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    if-nez p2, :cond_0

    .line 73
    new-instance p2, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter$ViewHolder;-><init>(Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$1;)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->resourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 76
    sget v0, Lcom/alibaba/ailabs/basedomain/R$id;->baike_infoplanet_tv:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter$ViewHolder;->access$102(Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 77
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 82
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 83
    invoke-static {p2}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter$ViewHolder;->access$100(Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NameAdapter name : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaikeInfoPlanetBtn"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method refresh(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/planet/BaikeInfoPlanetBtn$NameAdapter;->notifyDataSetChanged()V

    return-void
.end method
