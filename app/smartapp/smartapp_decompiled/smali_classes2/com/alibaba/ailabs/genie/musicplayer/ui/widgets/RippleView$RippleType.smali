.class public final enum Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;
.super Ljava/lang/Enum;
.source "RippleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RippleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

.field public static final enum DOUBLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

.field public static final enum RECTANGLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

.field public static final enum SIMPLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;


# instance fields
.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 497
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    const/4 v1, 0x0

    const-string v2, "SIMPLE"

    invoke-direct {v0, v2, v1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->SIMPLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    .line 498
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    const/4 v2, 0x1

    const-string v3, "DOUBLE"

    invoke-direct {v0, v3, v2, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->DOUBLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    .line 499
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    const/4 v3, 0x2

    const-string v4, "RECTANGLE"

    invoke-direct {v0, v4, v3, v3}, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->RECTANGLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    const/4 v0, 0x3

    .line 496
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    sget-object v4, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->SIMPLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->DOUBLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->RECTANGLE:Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->$VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 504
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 505
    iput p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;
    .locals 1

    .line 496
    const-class v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;
    .locals 1

    .line 496
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->$VALUES:[Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/musicplayer/ui/widgets/RippleView$RippleType;

    return-object v0
.end method
