.class public Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;
.super Ljava/lang/Object;
.source "UmbrellaServiceFetcher.java"


# static fields
.field private static final umCore:Lcom/alibaba/android/umbrella/export/FetcherCore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/android/umbrella/export/FetcherCore<",
            "Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/alibaba/android/umbrella/export/FetcherCore;

    const-class v1, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    invoke-direct {v0, v1}, Lcom/alibaba/android/umbrella/export/FetcherCore;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->umCore:Lcom/alibaba/android/umbrella/export/FetcherCore;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getUmbrella()Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;
    .locals 2

    .line 21
    sget-object v0, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher;->umCore:Lcom/alibaba/android/umbrella/export/FetcherCore;

    new-instance v1, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher$1;

    invoke-direct {v1}, Lcom/alibaba/android/umbrella/export/UmbrellaServiceFetcher$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/umbrella/export/FetcherCore;->get(Lcom/alibaba/android/umbrella/export/FetcherCore$FetchCallback;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/umbrella/link/UMLinkLogInterface;

    return-object v0
.end method
