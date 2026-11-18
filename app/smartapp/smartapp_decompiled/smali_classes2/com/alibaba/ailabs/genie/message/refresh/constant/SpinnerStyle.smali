.class public Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;
.super Ljava/lang/Object;
.source "SpinnerStyle.java"


# static fields
.field public static final FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

.field public static final FIXED_FRONT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

.field public static final MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

.field public static final SCALE:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

.field public static final VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;


# instance fields
.field public final front:Z

.field public final ordinal:I

.field public final scale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    invoke-direct {v0, v1, v1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->SCALE:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v2, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 21
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_FRONT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    .line 22
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v1, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;-><init>(IZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    const/4 v0, 0x5

    .line 24
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    sget-object v6, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->Translate:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    aput-object v6, v0, v2

    sget-object v2, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->SCALE:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_BEHIND:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->FIXED_FRONT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->MATCH_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(IZZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->ordinal:I

    .line 38
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->front:Z

    .line 39
    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/SpinnerStyle;->scale:Z

    return-void
.end method
