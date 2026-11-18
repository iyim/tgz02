.class public Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData$DataCode;
.super Ljava/lang/Object;
.source "ProtocolData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/protocol/ProtocolData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataCode"
.end annotation


# static fields
.field static final CODE_CUSTOM_MIN:I = 0x3e8

.field public static final CODE_NLP_ERROR:I = 0x3

.field public static final CODE_NO_QUESTION:I = 0x4

.field public static final CODE_RECORD_ERROR:I = 0x2

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_UNKNOWN:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
