.class public Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;
.super Ljava/lang/Object;
.source "RestKeyArraySorter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesASCComparator;,
        Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;
    }
.end annotation


# static fields
.field private static s_instance:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;


# instance fields
.field private mASCComparator:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesASCComparator;

.field private mDESCComparator:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;-><init>(Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$1;)V

    iput-object v0, p0, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->mDESCComparator:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;

    .line 20
    new-instance v0, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesASCComparator;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesASCComparator;-><init>(Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$1;)V

    iput-object v0, p0, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->mASCComparator:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesASCComparator;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;
    .locals 2

    const-class v0, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->s_instance:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;

    invoke-direct {v1}, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;-><init>()V

    sput-object v1, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->s_instance:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;

    .line 29
    :cond_0
    sget-object v1, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->s_instance:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public sortResourcesList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    .line 36
    iget-object p2, p0, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->mASCComparator:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesASCComparator;

    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;->mDESCComparator:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;

    :goto_0
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    .line 40
    array-length v0, p1

    if-lez v0, :cond_1

    .line 41
    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
