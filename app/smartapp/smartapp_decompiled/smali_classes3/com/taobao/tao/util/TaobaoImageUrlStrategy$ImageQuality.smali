.class public final enum Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;
.super Ljava/lang/Enum;
.source "TaobaoImageUrlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/tao/util/TaobaoImageUrlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q30:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q60:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

.field public static final enum q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;


# instance fields
.field ossQ:Ljava/lang/String;

.field tfsQ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1123
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const/4 v1, 0x0

    const-string v2, "q90"

    const-string v3, "90q"

    invoke-direct {v0, v2, v1, v2, v3}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1124
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const/4 v2, 0x1

    const-string v3, "q75"

    const-string v4, "75q"

    invoke-direct {v0, v3, v2, v3, v4}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1125
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const/4 v3, 0x2

    const-string v4, "q60"

    const-string v5, "60q"

    invoke-direct {v0, v4, v3, v4, v5}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q60:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1126
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const/4 v4, 0x3

    const-string v5, "q50"

    const-string v6, "50q"

    invoke-direct {v0, v5, v4, v5, v6}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1127
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const/4 v5, 0x4

    const-string v6, "q30"

    const-string v7, "30q"

    invoke-direct {v0, v6, v5, v6, v7}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q30:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    .line 1128
    new-instance v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const-string v6, ""

    const/4 v7, 0x5

    const-string v8, "non"

    invoke-direct {v0, v8, v7, v6, v6}, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    const/4 v0, 0x6

    .line 1122
    new-array v0, v0, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    sget-object v6, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q90:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v6, v0, v1

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q75:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q60:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q50:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->q30:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v5

    sget-object v1, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->non:Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    aput-object v1, v0, v7

    sput-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->$VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

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

    .line 1133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const-string p1, ""

    .line 1130
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->tfsQ:Ljava/lang/String;

    .line 1131
    iput-object p1, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->ossQ:Ljava/lang/String;

    .line 1134
    iput-object p3, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->tfsQ:Ljava/lang/String;

    .line 1135
    iput-object p4, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->ossQ:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;
    .locals 1

    .line 1122
    const-class v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    return-object p0
.end method

.method public static values()[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;
    .locals 1

    .line 1122
    sget-object v0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->$VALUES:[Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    invoke-virtual {v0}, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;

    return-object v0
.end method


# virtual methods
.method public getImageQuality()Ljava/lang/String;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->tfsQ:Ljava/lang/String;

    return-object v0
.end method

.method public getOssQuality()Ljava/lang/String;
    .locals 1

    .line 1144
    iget-object v0, p0, Lcom/taobao/tao/util/TaobaoImageUrlStrategy$ImageQuality;->ossQ:Ljava/lang/String;

    return-object v0
.end method
