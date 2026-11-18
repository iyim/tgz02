.class public Lcom/taobao/android/sku/data/constants/NavUrls;
.super Ljava/lang/Object;
.source "NavUrls.java"


# static fields
.field public static final NAV_URL_DETAIL:[Ljava/lang/String;

.field public static final NAV_URL_PURCHASE:Ljava/lang/String; = "https://h5.m.taobao.com/awp/base/buy.htm"

.field public static final NAV_URL_SHOP:Ljava/lang/String; = "https://shop.m.taobao.com/shop/shop_index.htm"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "https://a.m.tmall.com/i"

    const-string v1, "https://a.m.taobao.com/i"

    const-string v2, "https://h5.m.taobao.com/awp/core/detail.htm"

    const-string v3, "https://item.tmall.com/item.htm"

    const-string v4, "https://item.taobao.com/item.htm"

    const-string v5, "https://detail.tmall.com/item.htm"

    .line 5
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/taobao/android/sku/data/constants/NavUrls;->NAV_URL_DETAIL:[Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
