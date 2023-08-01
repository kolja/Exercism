// @ts-check


export class Size {
    constructor(w=80, h=60) {
        this.width = w;
        this.height = h;
    }
    resize(w, h) {
        this.width = w;
        this.height = h;
    }
}

export class Position {
    constructor(x=0, y=0) {
        this.x = x;
        this.y = y;
    }
    move(x, y) {
        this.x = x;
        this.y = y;
    }
}

export class ProgramWindow {
    constructor() {
        this.screenSize = new Size(800, 600)
        this.size = new Size()
        this.position = new Position()
    }
    _clamp(number, min, max) {
        return Math.max(min, Math.min(number, max));
    }
    resize(size) {
        let w = this._clamp(size.width, 1, this.screenSize.width - this.position.x)
        let h = this._clamp(size.height, 1, this.screenSize.height - this.position.y)
        this.size.resize( w, h )
    }
    move(position) {
        let x = this._clamp(position.x, 0, this.screenSize.width - this.size.width)
        let y = this._clamp(position.y, 0, this.screenSize.height - this.size.height)
        this.position.move(x, y)
    }
}

export function changeWindow(programWindow) {
    programWindow.resize(new Size(400,300))
    programWindow.move(new Position(100,150))
    return programWindow
}
