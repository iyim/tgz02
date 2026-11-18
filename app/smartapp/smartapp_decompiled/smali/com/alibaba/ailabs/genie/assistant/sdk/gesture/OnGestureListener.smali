.class public interface abstract Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;
.super Ljava/lang/Object;
.source "OnGestureListener.java"


# static fields
.field public static final ALL:I = 0x1000

.field public static final BACK:I = 0x5

.field public static final BACK_S:Ljava/lang/String; = "/Back"

.field public static final DOWN:I = 0x7

.field public static final DOWN_S:Ljava/lang/String; = "/Down"

.field public static final GOOD:I = 0x6

.field public static final GOOD_S:Ljava/lang/String; = "/Good"

.field public static final NEXT:I = 0x2

.field public static final NEXT_S:Ljava/lang/String; = "/Next"

.field public static final PAUSE:I = 0x4

.field public static final PAUSE_S:Ljava/lang/String; = "/Pause"

.field public static final PLAY:I = 0x3

.field public static final PLAY_S:Ljava/lang/String; = "/Play"

.field public static final PREVIOUS:I = 0x1

.field public static final PREVIOUS_S:Ljava/lang/String; = "/Previous"

.field public static final TIPS_BACK:I = 0x10

.field public static final TIPS_BACK_S:Ljava/lang/String; = "Back"

.field public static final TIPS_DOWN:I = 0x40

.field public static final TIPS_DOWN_S:Ljava/lang/String; = "Down"

.field public static final TIPS_GOOD:I = 0x20

.field public static final TIPS_GOOD_S:Ljava/lang/String; = "Good"

.field public static final TIPS_NEXT:I = 0x2

.field public static final TIPS_NEXT_S:Ljava/lang/String; = "Next"

.field public static final TIPS_PAUSE:I = 0x8

.field public static final TIPS_PAUSE_S:Ljava/lang/String; = "Pause"

.field public static final TIPS_PLAY:I = 0x4

.field public static final TIPS_PLAY_S:Ljava/lang/String; = "Play"

.field public static final TIPS_PREVIOUS:I = 0x1

.field public static final TIPS_PREVIOUS_S:Ljava/lang/String; = "Previous"

.field public static final gestureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener$1;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/genie/assistant/sdk/gesture/OnGestureListener;->gestureMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public abstract onGesture(I)V
.end method
