.class public Lcom/taobao/tao/util/TBImageUrlStrategy$Area;
.super Ljava/lang/Object;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TBImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Area"
.end annotation


# static fields
.field public static final bala:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final detail:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final home:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final non:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final search:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final shop:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final tbchannel:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final weapp:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final weappsharpen:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

.field public static final weitao:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;


# instance fields
.field mArea:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "search"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->search:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 19
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "detail"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->detail:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 20
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "shop"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->shop:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 21
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "weitao"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->weitao:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 22
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "weapp"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->weapp:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 23
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "weappsharpen"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->weappsharpen:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 24
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "bala"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->bala:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 25
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "home"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->home:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 26
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "tbchannel"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->tbchannel:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    .line 27
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    const-string v1, "default"

    invoke-direct {v0, v1}, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$Area;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 29
    iput-object v0, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->mArea:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->mArea:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArea()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$Area;->mArea:Ljava/lang/String;

    return-object v0
.end method
