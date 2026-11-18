.class Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager$VoiceManagerHolder;
.super Ljava/lang/Object;
.source "VoiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VoiceManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    invoke-direct {v0}, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager$VoiceManagerHolder;->sInstance:Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager$VoiceManagerHolder;->sInstance:Lcom/alibaba/ailabs/geniesdk/tts/VoiceManager;

    return-object v0
.end method
