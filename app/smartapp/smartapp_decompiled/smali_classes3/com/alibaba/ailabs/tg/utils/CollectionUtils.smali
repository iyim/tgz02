.class public Lcom/alibaba/ailabs/tg/utils/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# static fields
.field public static final DEFAULT_JOIN_SEPARATOR:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    .line 10
    sput-object v0, Lcom/alibaba/ailabs/tg/utils/CollectionUtils;->DEFAULT_JOIN_SEPARATOR:Ljava/lang/CharSequence;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 27
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static join(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 43
    :cond_0
    sget-object v0, Lcom/alibaba/ailabs/tg/utils/CollectionUtils;->DEFAULT_JOIN_SEPARATOR:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
