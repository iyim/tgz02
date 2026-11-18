.class public Lcom/alibaba/ailabs/geniesdk/focus/NativeFocusMgr;
.super Ljava/lang/Object;
.source "NativeFocusMgr.java"

# interfaces
.implements Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;


# instance fields
.field private mFocus:Lcom/alibaba/ailabs/geniesdk/focus/IFocus;

.field private mNative:J


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/geniesdk/focus/IFocus;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/focus/NativeFocusMgr;->mFocus:Lcom/alibaba/ailabs/geniesdk/focus/IFocus;

    .line 9
    invoke-interface {p1, p0}, Lcom/alibaba/ailabs/geniesdk/focus/IFocus;->setFocusListener(Lcom/alibaba/ailabs/geniesdk/focus/IFocusListener;)V

    return-void
.end method

.method private requestFocus(II)Z
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/focus/NativeFocusMgr;->mFocus:Lcom/alibaba/ailabs/geniesdk/focus/IFocus;

    .line 17
    invoke-interface {v0, p1, p2}, Lcom/alibaba/ailabs/geniesdk/focus/IFocus;->requestFocus(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public native onFocusChange(I)V
.end method
