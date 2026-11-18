.class public Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSize;
.super Ljava/lang/Object;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TaobaoImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageSize"
.end annotation


# instance fields
.field public height:I

.field public keep:Z

.field public limitWH:Z

.field public width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1305
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSize;-><init>(ZZII)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(ZZII)V
    .locals 0

    .line 1297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    iput-boolean p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSize;->keep:Z

    .line 1299
    iput-boolean p2, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSize;->limitWH:Z

    .line 1300
    iput p3, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSize;->width:I

    .line 1301
    iput p4, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageSize;->height:I

    return-void
.end method
