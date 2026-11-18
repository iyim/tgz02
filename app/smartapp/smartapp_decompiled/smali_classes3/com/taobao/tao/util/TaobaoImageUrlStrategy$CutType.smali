.class public final enum Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
.super Ljava/lang/Enum;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TaobaoImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

.field public static final enum non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

.field public static final enum xz:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;


# instance fields
.field ossCut:Ljava/lang/String;

.field tfsCut:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1099
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    const/4 v1, 0x0

    const-string v2, "xz"

    const-string v3, "1c"

    invoke-direct {v0, v2, v1, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->xz:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    .line 1100
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    const-string v2, ""

    const/4 v3, 0x1

    const-string v4, "non"

    invoke-direct {v0, v4, v3, v2, v2}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    const/4 v0, 0x2

    .line 1098
    new-array v0, v0, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    sget-object v2, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->xz:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->$VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 1102
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->tfsCut:Ljava/lang/String;

    .line 1103
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->ossCut:Ljava/lang/String;

    .line 1106
    iput-object p3, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->tfsCut:Ljava/lang/String;

    .line 1107
    iput-object p4, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->ossCut:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .locals 1

    .line 1098
    const-class v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;
    .locals 1

    .line 1098
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->$VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    invoke-virtual {v0}, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;

    return-object v0
.end method


# virtual methods
.method public getCutType()Ljava/lang/String;
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->tfsCut:Ljava/lang/String;

    return-object v0
.end method

.method public getOssCut()Ljava/lang/String;
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$CutType;->ossCut:Ljava/lang/String;

    return-object v0
.end method
