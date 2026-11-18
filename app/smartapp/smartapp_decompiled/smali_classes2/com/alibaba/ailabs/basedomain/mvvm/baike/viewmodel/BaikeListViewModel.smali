.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;
.super Landroid/arch/lifecycle/ViewModel;
.source "BaikeListViewModel.java"


# instance fields
.field private cardList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Landroid/arch/lifecycle/ViewModel;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;->cardList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCardList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Card;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/BaikeListViewModel;->cardList:Ljava/util/List;

    return-object v0
.end method
