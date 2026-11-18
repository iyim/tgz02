.class public Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;
.super Ljava/lang/Object;
.source "DimensionStatus.java"


# static fields
.field public static final CODE_EXACT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final CODE_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final DEAD_LOCK:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final DEAD_LOCK_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final DEFAULT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final DEFAULT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final XML_EXACT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final XML_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final XML_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final XML_LAYOUT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final XML_WRAP:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

.field public static final XML_WRAP_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;


# instance fields
.field public final notified:Z

.field public final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 15
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEFAULT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEFAULT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_WRAP_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/4 v4, 0x3

    invoke-direct {v0, v4, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_WRAP:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 36
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/4 v5, 0x4

    invoke-direct {v0, v5, v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 41
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/4 v6, 0x5

    invoke-direct {v0, v6, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_EXACT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 46
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/4 v7, 0x6

    invoke-direct {v0, v7, v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_LAYOUT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 51
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/4 v8, 0x7

    invoke-direct {v0, v8, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 56
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/16 v9, 0x8

    invoke-direct {v0, v9, v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->CODE_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 61
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/16 v10, 0x9

    invoke-direct {v0, v10, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->CODE_EXACT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 66
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/16 v11, 0xa

    invoke-direct {v0, v11, v1}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEAD_LOCK_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    .line 71
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    invoke-direct {v0, v11, v2}, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;-><init>(IZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEAD_LOCK:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/16 v0, 0xc

    .line 76
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    sget-object v12, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEFAULT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v12, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEFAULT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_WRAP_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_WRAP:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_EXACT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_LAYOUT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v7

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->XML_LAYOUT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v8

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->CODE_EXACT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v9

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->CODE_EXACT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v10

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEAD_LOCK_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    aput-object v1, v0, v11

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEAD_LOCK:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    .line 94
    iput-boolean p2, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    return-void
.end method


# virtual methods
.method public canReplaceWith(Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;)Z
    .locals 2

    .line 132
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    iget v1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->CODE_EXACT:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    if-ne v0, p0, :cond_1

    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    iget p1, p1, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public notified()Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;
    .locals 2

    .line 119
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public unNotify()Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;
    .locals 2

    .line 103
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-eqz v0, :cond_1

    .line 104
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    iget v1, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->ordinal:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 105
    iget-boolean v1, v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->notified:Z

    if-nez v1, :cond_0

    return-object v0

    .line 108
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;->DEFAULT_UN_NOTIFY:Lcom/alibaba/ailabs/genie/message/refresh/constant/DimensionStatus;

    return-object v0

    :cond_1
    return-object p0
.end method
