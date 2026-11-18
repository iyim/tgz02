.class public final Lcom/uc/webview/export/business/a$c;
.super Ljava/lang/Object;
.source "U4Source"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/business/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static a:J = 0x1L

.field public static b:J = 0x2L

.field public static c:J

.field public static d:J

.field public static e:J

.field public static f:J

.field public static g:J

.field public static h:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 79
    sget-wide v0, Lcom/uc/webview/export/business/a$c;->a:J

    const/4 v2, 0x2

    shl-long v2, v0, v2

    sput-wide v2, Lcom/uc/webview/export/business/a$c;->c:J

    const/4 v2, 0x3

    shl-long v2, v0, v2

    .line 80
    sput-wide v2, Lcom/uc/webview/export/business/a$c;->d:J

    const/4 v2, 0x4

    shl-long v2, v0, v2

    .line 81
    sput-wide v2, Lcom/uc/webview/export/business/a$c;->e:J

    const/4 v2, 0x5

    shl-long v2, v0, v2

    .line 82
    sput-wide v2, Lcom/uc/webview/export/business/a$c;->f:J

    const/4 v2, 0x6

    shl-long v2, v0, v2

    .line 83
    sput-wide v2, Lcom/uc/webview/export/business/a$c;->g:J

    const/4 v2, 0x7

    shl-long/2addr v0, v2

    .line 84
    sput-wide v0, Lcom/uc/webview/export/business/a$c;->h:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
