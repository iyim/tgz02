.class public Lcom/taobao/phenix/intf/ImageInfo;
.super Ljava/lang/Object;
.source "ImageInfo.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/taobao/phenix/intf/ImageInfo;->width:I

    .line 9
    iput p2, p0, Lcom/taobao/phenix/intf/ImageInfo;->height:I

    return-void
.end method
