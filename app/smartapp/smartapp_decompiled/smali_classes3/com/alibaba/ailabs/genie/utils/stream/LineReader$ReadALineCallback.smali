.class Lcom/alibaba/ailabs/genie/utils/stream/LineReader$ReadALineCallback;
.super Ljava/lang/Object;
.source "LineReader.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/utils/stream/LineReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/utils/stream/LineReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReadALineCallback"
.end annotation


# instance fields
.field private mResult:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/utils/stream/LineReader$1;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/utils/stream/LineReader$ReadALineCallback;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getResult()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/utils/stream/LineReader$ReadALineCallback;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public onDone()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onLine(Ljava/lang/String;I)Z
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/utils/stream/LineReader$ReadALineCallback;->mResult:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
