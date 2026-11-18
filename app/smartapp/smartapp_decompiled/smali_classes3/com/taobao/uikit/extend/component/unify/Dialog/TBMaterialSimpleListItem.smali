.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;
.super Ljava/lang/Object;
.source "TBMaterialSimpleListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;
    }
.end annotation


# instance fields
.field private final mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;


# direct methods
.method private constructor <init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$1;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;-><init>(Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;)V

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    iget v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mBackgroundColor:I

    return v0
.end method

.method public getContent()Ljava/lang/CharSequence;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mContent:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    iget-object v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconPadding()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->mBuilder:Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;

    iget v0, v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem$Builder;->mIconPadding:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/taobao/uikit/extend/component/unify/Dialog/TBMaterialSimpleListItem;->getContent()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "(no content)"

    return-object v0
.end method
