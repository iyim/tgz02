.class public final enum Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;
.super Ljava/lang/Enum;
.source "BinaryPageFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/BinaryPageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

.field public static final enum Asjusting:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

.field public static final enum Complete:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

.field public static final enum Wait:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;


# instance fields
.field private final desc:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 332
    new-instance v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    const/4 v1, 0x0

    const-string v2, "Wait"

    const-string v3, "\u5f85\u8c03\u6574"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Wait:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    new-instance v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    const/4 v2, 0x1

    const-string v3, "Asjusting"

    const-string v4, "\u8c03\u6574\u4e2d"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Asjusting:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    new-instance v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    const/4 v3, 0x2

    const-string v4, "Complete"

    const-string v5, "\u7cfb\u7edf\u5b8c\u6210"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Complete:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    const/4 v0, 0x3

    .line 331
    new-array v0, v0, [Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    sget-object v4, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Wait:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    aput-object v4, v0, v1

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Asjusting:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->Complete:Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->$VALUES:[Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

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

    .line 336
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 337
    iput p3, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->value:I

    .line 338
    iput-object p4, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->desc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;
    .locals 1

    .line 331
    const-class v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;
    .locals 1

    .line 331
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->$VALUES:[Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    invoke-virtual {v0}, [Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;

    return-object v0
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 342
    iget v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$PageState;->value:I

    return v0
.end method
