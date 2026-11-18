.class final enum Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;
.super Ljava/lang/Enum;
.source "BinaryPageFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/BinaryPageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

.field public static final enum FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

.field public static final enum LAST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

.field public static final enum NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 351
    new-instance v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    const/4 v1, 0x0

    const-string v2, "NONE"

    const/4 v3, -0x1

    const-string v4, "\u5206\u754c\u5904"

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    new-instance v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    const/4 v2, 0x1

    const-string v3, "FIRST"

    const-string v4, "\u7b2c\u4e00\u9875"

    invoke-direct {v0, v3, v2, v1, v4}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    new-instance v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    const/4 v3, 0x2

    const-string v4, "LAST"

    const-string v5, "\u7b2c\u4e8c\u9875"

    invoke-direct {v0, v4, v3, v2, v5}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->LAST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    const/4 v0, 0x3

    .line 350
    new-array v0, v0, [Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    sget-object v4, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    aput-object v4, v0, v1

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->LAST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->$VALUES:[Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 355
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 356
    iput p3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->value:I

    .line 357
    iput-object p4, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;
    .locals 1

    .line 350
    const-class v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;
    .locals 1

    .line 350
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->$VALUES:[Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    invoke-virtual {v0}, [Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 361
    iget v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->value:I

    return v0
.end method
