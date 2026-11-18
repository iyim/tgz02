.class public Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;
.super Ljava/lang/Object;
.source "ShoppingItemInfo.java"


# instance fields
.field public imgUrl:Ljava/lang/String;

.field public type:I

.field public videoThumbnailURL:Ljava/lang/String;

.field public videoURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/alibaba/genie/shopping/bean/ShoppingItemInfo;->type:I

    return-void
.end method
