.class final Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;
.super Ljava/util/ArrayList;
.source "RequestImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/mbg/unet/internal/RequestImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeadersList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/alibaba/mbg/unet/internal/RequestImpl$1;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/alibaba/mbg/unet/internal/RequestImpl$HeadersList;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
