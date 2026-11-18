.class public final enum Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;
.super Ljava/lang/Enum;
.source "TBImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TBImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum non:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q30:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q50:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q60:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q75:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

.field public static final enum q90:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;


# instance fields
.field mImageQuality:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 61
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const/4 v1, 0x0

    const-string v2, "q90"

    invoke-direct {v0, v2, v1, v2}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 62
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const/4 v2, 0x1

    const-string v3, "q75"

    invoke-direct {v0, v3, v2, v3}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 63
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const/4 v3, 0x2

    const-string v4, "q60"

    invoke-direct {v0, v4, v3, v4}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q60:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 64
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const/4 v4, 0x3

    const-string v5, "q50"

    invoke-direct {v0, v5, v4, v5}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 65
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const/4 v5, 0x4

    const-string v6, "q30"

    invoke-direct {v0, v6, v5, v6}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q30:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    .line 66
    new-instance v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const/4 v6, 0x5

    const-string v7, "non"

    const-string v8, ""

    invoke-direct {v0, v7, v6, v8}, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    const/4 v0, 0x6

    .line 60
    new-array v0, v0, [Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    sget-object v7, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v7, v0, v1

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q60:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->q30:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v6

    sput-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->$VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 69
    iput-object p1, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->mImageQuality:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->mImageQuality:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;
    .locals 1

    .line 60
    const-class v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    return-object p0
.end method

.method public static values()[Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;
    .locals 1

    .line 60
    sget-object v0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->$VALUES:[Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, [Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;

    return-object v0
.end method


# virtual methods
.method public getImageQuality()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/taobao/tao/util/TBImageUrlStrategy$ImageQuality;->mImageQuality:Ljava/lang/String;

    return-object v0
.end method
