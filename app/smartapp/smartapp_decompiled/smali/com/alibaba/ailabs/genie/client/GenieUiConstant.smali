.class public Lcom/alibaba/ailabs/genie/client/GenieUiConstant;
.super Ljava/lang/Object;
.source "GenieUiConstant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/client/GenieUiConstant$GenieClickType;,
        Lcom/alibaba/ailabs/genie/client/GenieUiConstant$GenieListener;,
        Lcom/alibaba/ailabs/genie/client/GenieUiConstant$GenieGestureAnimation;,
        Lcom/alibaba/ailabs/genie/client/GenieUiConstant$GenieBarStatus;
    }
.end annotation


# static fields
.field public static final BASE_CMD:I = 0x2710

.field public static final CMD_CHANGE_STATUS:I = 0x2715

.field public static final CMD_CONNECT:I = 0x2711

.field public static final CMD_DISCONNECT:I = 0x2712

.field public static final CMD_GENIE_UI_CLICK:I = 0x2718

.field public static final CMD_HIDE_UI:I = 0x2714

.field public static final CMD_INSERT_STATUS:I = 0x2716

.field public static final CMD_ON_GESTURE_ANIMATION_COMPLETE:I = 0x271d

.field public static final CMD_ON_GESTURE_ANIMATION_START:I = 0x271c

.field public static final CMD_PROMPT_MESSAGE:I = 0x271e

.field public static final CMD_REGISTER_LISTENER:I = 0x2719

.field public static final CMD_SET_WAKEUP_RECOMMEND_ENABLE:I = 0x2720

.field public static final CMD_SHOW_GESTURE_ANIMATION:I = 0x271b

.field public static final CMD_SHOW_GESTURE_HINT:I = 0x271f

.field public static final CMD_SHOW_NOTIFICATION:I = 0x271a

.field public static final CMD_SHOW_UI:I = 0x2713

.field public static final CMD_UPDATE_ASR:I = 0x2717

.field public static final KEY_METHOD:Ljava/lang/String; = "method"

.field public static final METHOD_IS_UI_SHOW:Ljava/lang/String; = "isUIShow"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
