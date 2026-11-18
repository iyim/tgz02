.class Lanetwork/channel/download/DownloadManager$ClassHolder;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanetwork/channel/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassHolder"
.end annotation


# static fields
.field static instance:Lanetwork/channel/download/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Lanetwork/channel/download/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanetwork/channel/download/DownloadManager;-><init>(Lanetwork/channel/download/DownloadManager$1;)V

    sput-object v0, Lanetwork/channel/download/DownloadManager$ClassHolder;->instance:Lanetwork/channel/download/DownloadManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
