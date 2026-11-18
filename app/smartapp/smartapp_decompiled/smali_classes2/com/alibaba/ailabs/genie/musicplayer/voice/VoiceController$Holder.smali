.class Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$Holder;
.super Ljava/lang/Object;
.source "VoiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$Holder;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;
    .locals 1

    .line 50
    sget-object v0, Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController$Holder;->INSTANCE:Lcom/alibaba/ailabs/genie/musicplayer/voice/VoiceController;

    return-object v0
.end method
