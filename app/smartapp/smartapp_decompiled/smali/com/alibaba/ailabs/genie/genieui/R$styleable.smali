.class public final Lcom/alibaba/ailabs/genie/genieui/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final GenieAnimationView:[I

.field public static final GenieAnimationView_genieUiFps:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 171
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f04014b

    aput v2, v0, v1

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/R$styleable;->GenieAnimationView:[I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
