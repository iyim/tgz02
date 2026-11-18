.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalBaikeData;
.super Ljava/lang/Object;
.source "UniversalBaikeData.java"


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mImageUrl:Ljava/lang/String;

.field private mLinkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;",
            ">;"
        }
    .end annotation
.end field

.field private mSubTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/UniversalBaikeData;->mLinkList:Ljava/util/List;

    return-void
.end method
