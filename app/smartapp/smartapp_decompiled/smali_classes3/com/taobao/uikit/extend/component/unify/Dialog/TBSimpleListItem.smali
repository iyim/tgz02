.class public Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;
.super Ljava/lang/Object;
.source "TBSimpleListItem.java"


# instance fields
.field mText:Ljava/lang/String;

.field mType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;->NORMAL:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->mType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;->NORMAL:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    iput-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->mType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    .line 14
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->mText:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->mType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->mType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->mText:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItem;->mType:Lcom/taobao/uikit/extend/component/unify/Dialog/TBSimpleListItemType;

    return-void
.end method
