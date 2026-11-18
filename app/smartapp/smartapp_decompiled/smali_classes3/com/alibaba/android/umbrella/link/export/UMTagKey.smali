.class public final enum Lcom/alibaba/android/umbrella/link/export/UMTagKey;
.super Ljava/lang/Enum;
.source "UMTagKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/umbrella/link/export/UMTagKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/umbrella/link/export/UMTagKey;

.field public static final enum TAG_1:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

.field public static final enum TAG_2:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

.field public static final enum TAG_3:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

.field public static final enum TAG_4:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

.field public static final enum TAG_5:Lcom/alibaba/android/umbrella/link/export/UMTagKey;


# instance fields
.field private final dimKey:Lcom/alibaba/android/umbrella/link/export/UMDimKey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    new-instance v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_1:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    const/4 v2, 0x0

    const-string v3, "TAG_1"

    invoke-direct {v0, v3, v2, v1}, Lcom/alibaba/android/umbrella/link/export/UMTagKey;-><init>(Ljava/lang/String;ILcom/alibaba/android/umbrella/link/export/UMDimKey;)V

    sput-object v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_1:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    .line 14
    new-instance v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_2:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    const/4 v3, 0x1

    const-string v4, "TAG_2"

    invoke-direct {v0, v4, v3, v1}, Lcom/alibaba/android/umbrella/link/export/UMTagKey;-><init>(Ljava/lang/String;ILcom/alibaba/android/umbrella/link/export/UMDimKey;)V

    sput-object v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_2:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    .line 15
    new-instance v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_3:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    const/4 v4, 0x2

    const-string v5, "TAG_3"

    invoke-direct {v0, v5, v4, v1}, Lcom/alibaba/android/umbrella/link/export/UMTagKey;-><init>(Ljava/lang/String;ILcom/alibaba/android/umbrella/link/export/UMDimKey;)V

    sput-object v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_3:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    .line 16
    new-instance v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_4:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    const/4 v5, 0x3

    const-string v6, "TAG_4"

    invoke-direct {v0, v6, v5, v1}, Lcom/alibaba/android/umbrella/link/export/UMTagKey;-><init>(Ljava/lang/String;ILcom/alibaba/android/umbrella/link/export/UMDimKey;)V

    sput-object v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_4:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    .line 17
    new-instance v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMDimKey;->TAG_5:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    const/4 v6, 0x4

    const-string v7, "TAG_5"

    invoke-direct {v0, v7, v6, v1}, Lcom/alibaba/android/umbrella/link/export/UMTagKey;-><init>(Ljava/lang/String;ILcom/alibaba/android/umbrella/link/export/UMDimKey;)V

    sput-object v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_5:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    const/4 v0, 0x5

    .line 12
    new-array v0, v0, [Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_1:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_2:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_3:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_4:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->TAG_5:Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->$VALUES:[Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/alibaba/android/umbrella/link/export/UMDimKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/umbrella/link/export/UMDimKey;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->dimKey:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/umbrella/link/export/UMTagKey;
    .locals 1

    .line 12
    const-class v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/umbrella/link/export/UMTagKey;
    .locals 1

    .line 12
    sget-object v0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->$VALUES:[Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    invoke-virtual {v0}, [Lcom/alibaba/android/umbrella/link/export/UMTagKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/umbrella/link/export/UMTagKey;

    return-object v0
.end method


# virtual methods
.method public getDimKey()Lcom/alibaba/android/umbrella/link/export/UMDimKey;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/android/umbrella/link/export/UMTagKey;->dimKey:Lcom/alibaba/android/umbrella/link/export/UMDimKey;

    return-object v0
.end method
