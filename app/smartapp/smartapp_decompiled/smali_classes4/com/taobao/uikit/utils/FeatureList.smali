.class public Lcom/taobao/uikit/utils/FeatureList;
.super Ljava/util/ArrayList;
.source "FeatureList.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Lcom/taobao/uikit/utils/IFeatureList;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/util/ArrayList<",
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "-TT;>;>;",
        "Ljava/util/Comparator<",
        "Lcom/taobao/uikit/feature/features/AbsFeature<",
        "-TT;>;>;",
        "Lcom/taobao/uikit/utils/IFeatureList<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4cde8c08c1cd7cd9L


# instance fields
.field private mHost:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/taobao/uikit/utils/FeatureList;->mHost:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public add(Lcom/taobao/uikit/feature/features/AbsFeature;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 36
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 37
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " already add to this view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
    :cond_1
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 46
    invoke-static {p0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 17
    check-cast p1, Lcom/taobao/uikit/feature/features/AbsFeature;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/utils/FeatureList;->add(Lcom/taobao/uikit/feature/features/AbsFeature;)Z

    move-result p1

    return p1
.end method

.method public addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-TT;>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/taobao/uikit/utils/FeatureList;->mHost:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/taobao/uikit/feature/features/AbsFeature;->setHost(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/taobao/uikit/utils/FeatureList;->add(Lcom/taobao/uikit/feature/features/AbsFeature;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public clearFeatures()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/taobao/uikit/utils/FeatureList;->clear()V

    .line 110
    iget-object v0, p0, Lcom/taobao/uikit/utils/FeatureList;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public compare(Lcom/taobao/uikit/feature/features/AbsFeature;Lcom/taobao/uikit/feature/features/AbsFeature;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-TT;>;",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-TT;>;)I"
        }
    .end annotation

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/taobao/uikit/feature/features/FeatureFactory;->getFeaturePriority(Ljava/lang/String;)I

    move-result p1

    .line 54
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 54
    invoke-static {p2}, Lcom/taobao/uikit/feature/features/FeatureFactory;->getFeaturePriority(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 17
    check-cast p1, Lcom/taobao/uikit/feature/features/AbsFeature;

    check-cast p2, Lcom/taobao/uikit/feature/features/AbsFeature;

    invoke-virtual {p0, p1, p2}, Lcom/taobao/uikit/utils/FeatureList;->compare(Lcom/taobao/uikit/feature/features/AbsFeature;Lcom/taobao/uikit/feature/features/AbsFeature;)I

    move-result p1

    return p1
.end method

.method public findFeature(Ljava/lang/Class;)Lcom/taobao/uikit/feature/features/AbsFeature;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-TT;>;>;)",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-TT;>;"
        }
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 59
    sget-object v0, Lcom/taobao/uikit/base/R$styleable;->FeatureNameSpace:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v1, p0, Lcom/taobao/uikit/utils/FeatureList;->mHost:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/taobao/uikit/feature/features/FeatureFactory;->creator(Landroid/content/Context;Landroid/content/res/TypedArray;)Ljava/util/ArrayList;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 66
    invoke-virtual {p0, v4}, Lcom/taobao/uikit/utils/FeatureList;->addFeature(Lcom/taobao/uikit/feature/features/AbsFeature;)Z

    .line 67
    invoke-virtual {v4, p1, p2, p3}, Lcom/taobao/uikit/feature/features/AbsFeature;->constructor(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    return-void
.end method

.method public removeFeature(Ljava/lang/Class;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/taobao/uikit/feature/features/AbsFeature<",
            "-TT;>;>;)Z"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/taobao/uikit/utils/FeatureList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 99
    invoke-virtual {p0, v2}, Lcom/taobao/uikit/utils/FeatureList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/taobao/uikit/feature/features/AbsFeature;

    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 101
    invoke-virtual {p0, v3}, Lcom/taobao/uikit/utils/FeatureList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
